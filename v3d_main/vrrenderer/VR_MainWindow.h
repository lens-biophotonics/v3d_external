#ifndef VR_MainWindow_H
#define VR_MainWindow_H

#include <QWidget>
#include <QtGui>
//#include <QtCore/QCoreApplication>
#include <QTcpSocket>
//#include <QRegExpValidator>
//#ifdef _WIN32
//    #include <windows.h>
//#endif

#include "../basic_c_fun/v3d_interface.h"
#define PORT 1234

class CMainApplication;
class My4DImage;
class MainWindow;
class VR_MainWindow : public QWidget
{
    Q_OBJECT

public:
    explicit VR_MainWindow();
    ~VR_MainWindow();
	void onReadySend(QString &send_MSG);
	bool SendLoginRequest();
	void StartVRScene(NeuronTree nt, My4DImage *i4d, MainWindow *pmain);


public slots:
	void RunVRMainloop();
	void SendHMDPosition();
private slots:

    void onReadyRead();
    void onConnected();
    void onDisconnected();
public:
	CMainApplication *pMainApplication;
private:
	
    QTcpSocket* socket;
	QString userName;
	QString vr_Port;
	bool CURRENT_DATA_IS_SENT;

};

bool startStandaloneVRScene(NeuronTree nt, My4DImage *img4d, MainWindow *pmain);


#endif // VR_MainWindow_H
