.class final enum Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;
.super Ljava/lang/Enum;
.source "QtAndroidNetworkInformation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "AndroidConnectivity"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;

.field public static final enum Connected:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;

.field public static final enum Disconnected:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;

.field public static final enum Unknown:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 63
    new-instance v0, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;

    const-string v1, "Connected"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;->Connected:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;

    new-instance v1, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;

    const-string v3, "Unknown"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;->Unknown:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;

    new-instance v3, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;

    const-string v5, "Disconnected"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;->Disconnected:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;

    const/4 v5, 0x3

    new-array v5, v5, [Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 62
    sput-object v5, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;->$VALUES:[Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 62
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;
    .locals 1

    .line 62
    const-class v0, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;

    return-object p0
.end method

.method public static values()[Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;
    .locals 1

    .line 62
    sget-object v0, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;->$VALUES:[Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;

    invoke-virtual {v0}, [Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;

    return-object v0
.end method
