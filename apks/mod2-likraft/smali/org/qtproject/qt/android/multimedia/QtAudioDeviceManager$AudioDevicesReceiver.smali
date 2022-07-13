.class Lorg/qtproject/qt/android/multimedia/QtAudioDeviceManager$AudioDevicesReceiver;
.super Landroid/content/BroadcastReceiver;
.source "QtAudioDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/qtproject/qt/android/multimedia/QtAudioDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AudioDevicesReceiver"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/qtproject/qt/android/multimedia/QtAudioDeviceManager$1;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lorg/qtproject/qt/android/multimedia/QtAudioDeviceManager$AudioDevicesReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 67
    invoke-static {}, Lorg/qtproject/qt/android/multimedia/QtAudioDeviceManager;->onAudioInputDevicesUpdated()V

    .line 68
    invoke-static {}, Lorg/qtproject/qt/android/multimedia/QtAudioDeviceManager;->onAudioOutputDevicesUpdated()V

    return-void
.end method
