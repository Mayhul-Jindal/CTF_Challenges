.class public Lorg/qtproject/qt/android/multimedia/QtAudioDeviceManager;
.super Ljava/lang/Object;
.source "QtAudioDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/qtproject/qt/android/multimedia/QtAudioDeviceManager$AudioDevicesReceiver;
    }
.end annotation


# static fields
.field private static final m_audioDevicesReceiver:Lorg/qtproject/qt/android/multimedia/QtAudioDeviceManager$AudioDevicesReceiver;

.field private static m_audioManager:Landroid/media/AudioManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 58
    new-instance v0, Lorg/qtproject/qt/android/multimedia/QtAudioDeviceManager$AudioDevicesReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/qtproject/qt/android/multimedia/QtAudioDeviceManager$AudioDevicesReceiver;-><init>(Lorg/qtproject/qt/android/multimedia/QtAudioDeviceManager$1;)V

    sput-object v0, Lorg/qtproject/qt/android/multimedia/QtAudioDeviceManager;->m_audioDevicesReceiver:Lorg/qtproject/qt/android/multimedia/QtAudioDeviceManager$AudioDevicesReceiver;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static audioDeviceTypeToString(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string p0, "Unknown-Type"

    return-object p0

    :pswitch_1
    const-string p0, "IP"

    return-object p0

    :pswitch_2
    const-string p0, "AUX Line"

    return-object p0

    :pswitch_3
    const-string p0, "TV tuner"

    return-object p0

    :pswitch_4
    const-string p0, "FM TUNER"

    return-object p0

    :pswitch_5
    const-string p0, "Built in microphone"

    return-object p0

    :pswitch_6
    const-string p0, "FM"

    return-object p0

    :pswitch_7
    const-string p0, "Dock"

    return-object p0

    :pswitch_8
    const-string p0, "USB accessory"

    return-object p0

    :pswitch_9
    const-string p0, "HDMI ARC"

    return-object p0

    :pswitch_a
    const-string p0, "HDMI"

    return-object p0

    :pswitch_b
    const-string p0, "Bluetooth"

    return-object p0

    :pswitch_c
    const-string p0, "Line digital"

    return-object p0

    :pswitch_d
    const-string p0, "Line analog"

    return-object p0

    :pswitch_e
    const-string p0, "Wired headphones"

    return-object p0

    :pswitch_f
    const-string p0, "Wired headset"

    return-object p0

    :pswitch_10
    const-string p0, "Built in speaker"

    return-object p0

    :pswitch_11
    const-string p0, "Built in earpiece"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static getAudioDevices(I)[Ljava/lang/String;
    .locals 10

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 202
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_5

    .line 205
    sget-object v1, Lorg/qtproject/qt/android/multimedia/QtAudioDeviceManager;->m_audioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, p0}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v3, v1, :cond_5

    aget-object v6, p0, v3

    .line 206
    invoke-virtual {v6}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v7

    invoke-static {v7}, Lorg/qtproject/qt/android/multimedia/QtAudioDeviceManager;->audioDeviceTypeToString(I)Ljava/lang/String;

    move-result-object v7

    .line 208
    invoke-static {v2}, Lorg/qtproject/qt/android/multimedia/QtAudioDeviceManager;->audioDeviceTypeToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_2

    :cond_0
    const/16 v8, 0xf

    .line 211
    invoke-static {v8}, Lorg/qtproject/qt/android/multimedia/QtAudioDeviceManager;->audioDeviceTypeToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_2

    if-eqz v4, :cond_1

    goto :goto_2

    :cond_1
    move v4, v9

    goto :goto_1

    .line 222
    :cond_2
    invoke-static {v6}, Lorg/qtproject/qt/android/multimedia/QtAudioDeviceManager;->isBluetoothDevice(Landroid/media/AudioDeviceInfo;)Z

    move-result v8

    if-eqz v8, :cond_4

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    move v5, v9

    .line 232
    :cond_4
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " ("

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    invoke-virtual {v6}, Landroid/media/AudioDeviceInfo;->getProductName()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 232
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 237
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    .line 238
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method private static getAudioInputDevices()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 103
    invoke-static {v0}, Lorg/qtproject/qt/android/multimedia/QtAudioDeviceManager;->getAudioDevices(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getAudioOutputDevices()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    .line 98
    invoke-static {v0}, Lorg/qtproject/qt/android/multimedia/QtAudioDeviceManager;->getAudioDevices(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static isBluetoothDevice(Landroid/media/AudioDeviceInfo;)Z
    .locals 1

    .line 108
    invoke-virtual {p0}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result p0

    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private static isMicrophoneMute()Z
    .locals 1

    .line 149
    sget-object v0, Lorg/qtproject/qt/android/multimedia/QtAudioDeviceManager;->m_audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMicrophoneMute()Z

    move-result v0

    return v0
.end method

.method public static native onAudioInputDevicesUpdated()V
.end method

.method public static native onAudioOutputDevicesUpdated()V
.end method

.method private static registerAudioHeadsetStateReceiver(Landroid/content/Context;)V
    .locals 2

    .line 74
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.HEADSET_PLUG"

    .line 75
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.media.action.HDMI_AUDIO_PLUG"

    .line 76
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.device.action.ACL_CONNECTED"

    .line 77
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.device.action.ACL_DISCONNECTED"

    .line 78
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.device.action.ACL_DISCONNECT_REQUESTED"

    .line 79
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 80
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    .line 81
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    .line 82
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

    .line 83
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    .line 84
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.a2dp.profile.action.PLAYING_STATE_CHANGED"

    .line 85
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 87
    sget-object v1, Lorg/qtproject/qt/android/multimedia/QtAudioDeviceManager;->m_audioDevicesReceiver:Lorg/qtproject/qt/android/multimedia/QtAudioDeviceManager$AudioDevicesReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private static setAudioInput(Landroid/media/MediaRecorder;I)Z
    .locals 7

    .line 119
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1c

    if-ge v0, v2, :cond_0

    return v1

    .line 122
    :cond_0
    sget-object v0, Lorg/qtproject/qt/android/multimedia/QtAudioDeviceManager;->m_audioManager:Landroid/media/AudioManager;

    const/4 v2, 0x1

    .line 123
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v0

    .line 125
    array-length v3, v0

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v0, v4

    .line 126
    invoke-virtual {v5}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v6

    if-eq v6, p1, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 129
    :cond_1
    invoke-virtual {p0, v5}, Landroid/media/MediaRecorder;->setPreferredDevice(Landroid/media/AudioDeviceInfo;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 130
    invoke-static {v5}, Lorg/qtproject/qt/android/multimedia/QtAudioDeviceManager;->isBluetoothDevice(Landroid/media/AudioDeviceInfo;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 131
    sget-object p1, Lorg/qtproject/qt/android/multimedia/QtAudioDeviceManager;->m_audioManager:Landroid/media/AudioManager;

    invoke-virtual {p1}, Landroid/media/AudioManager;->startBluetoothSco()V

    .line 132
    sget-object p1, Lorg/qtproject/qt/android/multimedia/QtAudioDeviceManager;->m_audioManager:Landroid/media/AudioManager;

    invoke-virtual {p1, v2}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    :cond_2
    return p0

    :cond_3
    return v1
.end method

.method private static setAudioOutput(IZZ)V
    .locals 1

    .line 277
    sget-object v0, Lorg/qtproject/qt/android/multimedia/QtAudioDeviceManager;->m_audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->setMode(I)V

    if-eqz p1, :cond_0

    .line 279
    sget-object p0, Lorg/qtproject/qt/android/multimedia/QtAudioDeviceManager;->m_audioManager:Landroid/media/AudioManager;

    invoke-virtual {p0}, Landroid/media/AudioManager;->startBluetoothSco()V

    goto :goto_0

    .line 281
    :cond_0
    sget-object p0, Lorg/qtproject/qt/android/multimedia/QtAudioDeviceManager;->m_audioManager:Landroid/media/AudioManager;

    invoke-virtual {p0}, Landroid/media/AudioManager;->stopBluetoothSco()V

    .line 283
    :goto_0
    sget-object p0, Lorg/qtproject/qt/android/multimedia/QtAudioDeviceManager;->m_audioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 284
    sget-object p0, Lorg/qtproject/qt/android/multimedia/QtAudioDeviceManager;->m_audioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, p2}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    return-void
.end method

.method private static setAudioOutput(I)Z
    .locals 7

    .line 244
    sget-object v0, Lorg/qtproject/qt/android/multimedia/QtAudioDeviceManager;->m_audioManager:Landroid/media/AudioManager;

    const/4 v1, 0x2

    .line 245
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v0

    .line 246
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_5

    aget-object v5, v0, v4

    .line 247
    invoke-virtual {v5}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v6

    if-ne v6, p0, :cond_4

    .line 248
    invoke-virtual {v5}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    if-eq p0, v1, :cond_2

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/4 v2, 0x4

    if-eq p0, v2, :cond_1

    const/4 v2, 0x7

    if-eq p0, v2, :cond_0

    const/16 v2, 0x8

    if-eq p0, v2, :cond_0

    return v3

    .line 252
    :cond_0
    invoke-static {v1, v0, v3}, Lorg/qtproject/qt/android/multimedia/QtAudioDeviceManager;->setAudioOutput(IZZ)V

    return v0

    .line 259
    :cond_1
    invoke-static {v1, v3, v3}, Lorg/qtproject/qt/android/multimedia/QtAudioDeviceManager;->setAudioOutput(IZZ)V

    return v0

    .line 255
    :cond_2
    invoke-static {v3, v3, v0}, Lorg/qtproject/qt/android/multimedia/QtAudioDeviceManager;->setAudioOutput(IZZ)V

    return v0

    .line 265
    :cond_3
    invoke-static {v1, v3, v3}, Lorg/qtproject/qt/android/multimedia/QtAudioDeviceManager;->setAudioOutput(IZZ)V

    return v0

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    return v3
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 1

    const-string v0, "audio"

    .line 92
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    sput-object v0, Lorg/qtproject/qt/android/multimedia/QtAudioDeviceManager;->m_audioManager:Landroid/media/AudioManager;

    .line 93
    invoke-static {p0}, Lorg/qtproject/qt/android/multimedia/QtAudioDeviceManager;->registerAudioHeadsetStateReceiver(Landroid/content/Context;)V

    return-void
.end method

.method private static setInputMuted(Z)V
    .locals 1

    .line 144
    sget-object v0, Lorg/qtproject/qt/android/multimedia/QtAudioDeviceManager;->m_audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->setMicrophoneMute(Z)V

    return-void
.end method
