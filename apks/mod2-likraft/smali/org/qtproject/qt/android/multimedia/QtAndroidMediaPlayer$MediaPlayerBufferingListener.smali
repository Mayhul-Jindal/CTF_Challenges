.class Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$MediaPlayerBufferingListener;
.super Ljava/lang/Object;
.source "QtAndroidMediaPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaPlayerBufferingListener"
.end annotation


# instance fields
.field private mBufferPercent:I

.field final synthetic this$0:Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;


# direct methods
.method private constructor <init>(Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$MediaPlayerBufferingListener;->this$0:Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 147
    iput p1, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$MediaPlayerBufferingListener;->mBufferPercent:I

    return-void
.end method

.method synthetic constructor <init>(Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$1;)V
    .locals 0

    .line 144
    invoke-direct {p0, p1}, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$MediaPlayerBufferingListener;-><init>(Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;)V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 2

    .line 154
    iget p1, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$MediaPlayerBufferingListener;->mBufferPercent:I

    if-ne p1, p2, :cond_0

    return-void

    .line 157
    :cond_0
    iget-object p1, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$MediaPlayerBufferingListener;->this$0:Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;

    iput p2, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$MediaPlayerBufferingListener;->mBufferPercent:I

    invoke-static {p1}, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->access$100(Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;)J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->onBufferingUpdateNative(IJ)V

    return-void
.end method
