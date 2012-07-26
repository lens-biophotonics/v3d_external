#ifndef SCREENPATTERNANNOTATOR_H
#define SCREENPATTERNANNOTATOR_H

#include <QString>
#include <QtCore>
#include <QDir>
#include "../../v3d/v3d_core.h"
#include "../../v3d/histogramsimple.h"

using namespace std;

class SPA_BoundingBox
{
public:
    int x0;
    int x1;
    int y0;
    int y1;
    int z0;
    int z1;
};

class SortableStringDouble
{
 public:
  QString theString;
  double theDouble;
  bool operator<(const SortableStringDouble other) const {
    return theDouble < other.theDouble;
  }
};


class ScreenPatternAnnotator
{
public:

    static const int MODE_UNDEFINED;
    static const int MODE_ANNOTATE;
    static const int MODE_COMPARTMENT_INDEX;
    static const int MODE_INDEX;
    static const int MODE_MASK_GUIDE;
    static const int MODE_ARNIM_SCORE;
    static const int MODE_SIMILARITY_SCORE;

    ScreenPatternAnnotator();

    ~ScreenPatternAnnotator();

    static string getCommandLineDescription() {
        return "screen-pattern-annotator";
    }

    static string getUsage() {
        string usage;
        usage.append("  Screen Pattern Analysis Tool                                                                          \n");
        usage.append("                                                                                                        \n");
        usage.append("    This tool takes as input the 3D stack containing a Fly-Brain expression pattern. It assumes the     \n");
        usage.append("    stack is already aligned.                                                                           \n");
        usage.append("                                                                                                        \n");
        usage.append("  Normal usage to generate screen pattern annotation:                                                   \n");
        usage.append("                                                                                                        \n");
        usage.append("   -input <filepath for stack>                                                                          \n");
        usage.append("   -pattern_channel  <0-based channel index in stack for pattern channel>                               \n");
        usage.append("   -prefix <prefix for output files>                                                                    \n");
        usage.append("   -resourceDir <resource dir with compartment indices files>                                           \n");
        usage.append("   -outputDir <output directory>                                                                        \n");
        usage.append("                                                                                                        \n");
        usage.append("  To generate resourceDir from source compartment masks:                                                \n");
        usage.append("                                                                                                        \n");
        usage.append("   -topLevelCompartmentMaskDir <dir path>                                                               \n");
        usage.append("   -outputResourceDir <resource dir path>                                                               \n");
        usage.append("   -flipYWhenLoadingMasks <true/false>                                                                  \n");
	usage.append("                                                                                                        \n");
	usage.append(" To generate an updated index file containing separate entries for a single unlabeled index:            \n");
	usage.append("                                                                                                        \n");
	usage.append("   -compartmentIndexFile <compartmentIndexFile>                                                         \n");
	usage.append("   -compartmentNameIndexFile <compartmentNameIndexFile>                                                 \n");
	usage.append("   -maskBinaryFile <mask binary file>                                                                   \n");
	usage.append("   -outputIndexFile <output index file>                                                                 \n");
	usage.append("   -outputNameIndexFile <output name index file>                                                        \n");
	usage.append("   -outputRGBFile <output RGB file>                                                                     \n");
	usage.append("                                                                                                        \n");
	usage.append(" To generate a Mask Guide directory:                                                                    \n");
	usage.append("                                                                                                        \n");
	usage.append("   -inputNameIndexFile <name index file>                                                                \n");
	usage.append("   -inputRGBFile <mask rgb file>                                                                        \n");
	usage.append("   -outputMaskDirectory <directory path>                                                                \n");
	usage.append("                                                                                                        \n");
	usage.append(" To generate Arnim-style pattern annotation scores:                                                     \n");
	usage.append("                                                                                                        \n");
        usage.append("   -input <filepath for stack>                                                                          \n");
        usage.append("   -pattern_channel  <0-based channel index in stack for pattern channel>                               \n");
        usage.append("   -resourceDir <resource dir with compartment indices files>                                           \n");
        usage.append("   -arnimScoreOutputFile <output score file>                                                            \n");
	usage.append("                                                                                                        \n");
	usage.append(" To compute a similarity score on a set of 3D images:                                                   \n");
        usage.append("                                                                                                        \n");
	usage.append("   -targetStack <filepath for target stack>                                                             \n");
	usage.append("   -subjectStackList <filepath for subject stack list>                                                  \n");
	usage.append("   -outputSimilarityList <sorted list of subject stacks with scores>                                    \n");
	usage.append("                                                                                                        \n");
        return usage;
    }

    bool execute();

    int processArgs(vector<char*> *argList);

    My4DImage * create3DHeatmapFromChannel(My4DImage * sourceImage, V3DLONG sourceChannel, v3d_uint8 * lookupTable);

    v3d_uint8 * create16Color8BitLUT();

private:

    int mode;
    
    // For similarity scores
    QString targetStackFilepath;
    QString subjectStackListFilepath;
    QString outputSimilarityFilepath;

    // For Arnim Score
    QString arnimScoreOutputFilepath;

    // For Mask Guide
    QString inputNameIndexFile;
    QString inputMaskRGBFile;
    QString outputMaskDirectoryPath;

    // For updating index file
    QString compartmentIndexFile;
    QString compartmentNameIndexFile;
    QString maskBinaryFile;
    QString outputIndexFile;
    QString outputNameIndexFile;
    QString outputRGBFile;

    QString inputStackFilepath;
    QString outputDirectoryPath;
    QString resourceDirectoryPath;
    int patternChannelIndex;
    QString outputPrefix;
    My4DImage * inputImage;
    My4DImage * inputImageCubified;
    My4DImage * imageGlobal16ColorImage;
    My4DImage * compositeMaskImage;
    HistogramSimple global256BinHistogram;
    v3d_uint8 * lut16Color;
    QString topLevelCompartmentMaskDirPath;
    QString outputResourceDirPath;
    My4DImage * compartmentIndexImage;
    My4DImage * compartmentIndexImageCubified;
    QMap<int, QString> compartmentIndexAbbreviationMap;
    bool flipYWhenLoadingMasks;
    v3d_uint8 zoneThresholds[4];
    double globalZoneLevels[5];
    QList<QString> quantifierList;


    QString returnFullPathWithOutputPrefix(QString filename);
    QString returnFullPathWithOutputPrefix(QString filename, QString subdirName);
    bool createCompartmentIndex();
    bool annotate();
    bool loadMaskNameIndex();
    int getIndexFromCompartmentMaskFilename(QString filename);
    QString getAbbreviationFromCompartmentMaskFilename(QString filename);
    void createCompartmentAnnotation(int index, QString abbreviation);
    SPA_BoundingBox findBoundingBoxFromIndex(int index);
    My4DImage * createSub3DImageFromMask(My4DImage * image, int index, SPA_BoundingBox bb);
    My4DImage * createNormalizedImage(My4DImage * image, int maskIndex);
    My4DImage * createMIPFromImage(My4DImage * image);

    My4DImage * getChannelSubImageFromMask(My4DImage * sourceImage, int sourceChannel, int index, SPA_BoundingBox bb, bool normalize, double normalizationCutoff /* 0.0-1.0 */);
    My4DImage * createViewableImage(My4DImage * sourceImage, int borderSize);
    My4DImage * cubifyImage(My4DImage * sourceImage, int cubeSize, int type);
    My4DImage * createCompositeMaskImage(My4DImage * sourceImage, My4DImage * indexImage);
    double * quantifyCompartmentZones(My4DImage * sourceImage, My4DImage * compartmentIndex, int index, SPA_BoundingBox bb);
    void addXYGhostPlaneFrom3DTo2D(My4DImage* stackImage, int zOffset, int stackChannel, My4DImage* image);
    bool createOutputDirTree();
    QString getOutputSubdirectory(QString dirName);
    QString getMipsSubdirectoryPath();
    QString getSupportingSubdirectoryPath();
    QString getNormalizedSubdirectoryPath();
    bool createOrVerifyDirectory(QString dirPath);
    bool updateIndex();

    bool createMaskGuide();
    My4DImage * createMaskIndexGhostImage(My4DImage * rgbSourceMask, int maskIndex, QList<int> redList, QList<int> greenList, QList<int> blueList);

    bool arnimScore();
    int * quantifyArnimCompartmentScores(My4DImage * sourceImage, My4DImage * compartmentIndex, int index, SPA_BoundingBox bb);
    bool loadCompartmentIndex();

    bool createSimilarityList();
    double computeStackSimilarity(My4DImage* targetStack, My4DImage* subjectStack);

};

#endif // SCREENPATTERNANNOTATOR_H
