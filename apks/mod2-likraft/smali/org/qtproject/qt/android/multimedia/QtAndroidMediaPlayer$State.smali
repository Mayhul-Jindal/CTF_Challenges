.class Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$State;
.super Ljava/lang/Object;
.source "QtAndroidMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "State"
.end annotation


# static fields
.field static final Error:I = 0x200

.field static final Idle:I = 0x2

.field static final Initialized:I = 0x10

.field static final Paused:I = 0x80

.field static final PlaybackCompleted:I = 0x100

.field static final Prepared:I = 0x8

.field static final Preparing:I = 0x4

.field static final Started:I = 0x20

.field static final Stopped:I = 0x40

.field static final Uninitialized:I = 0x1


# instance fields
.field final synthetic this$0:Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;


# direct methods
.method private constructor <init>(Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$State;->this$0:Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
