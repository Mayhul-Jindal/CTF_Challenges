.class public Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$TrackInfo;
.super Ljava/lang/Object;
.source "QtAndroidMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TrackInfo"
.end annotation


# instance fields
.field private language:Ljava/lang/String;

.field private mime:Ljava/lang/String;

.field final synthetic this$0:Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;

.field private type:I


# direct methods
.method constructor <init>(Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$TrackInfo;->this$0:Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput p2, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$TrackInfo;->type:I

    .line 113
    iput-object p3, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$TrackInfo;->mime:Ljava/lang/String;

    .line 114
    iput-object p4, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$TrackInfo;->language:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method getLanguage()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$TrackInfo;->language:Ljava/lang/String;

    return-object v0
.end method

.method getMime()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$TrackInfo;->mime:Ljava/lang/String;

    return-object v0
.end method

.method getType()I
    .locals 1

    .line 117
    iget v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$TrackInfo;->type:I

    return v0
.end method
