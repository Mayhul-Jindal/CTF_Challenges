.class final enum Lcom/smartsoft/ble/ConnectState;
.super Ljava/lang/Enum;
.source "Bluetooth.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/smartsoft/ble/ConnectState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/smartsoft/ble/ConnectState;

.field public static final enum ConnectStateConnected:Lcom/smartsoft/ble/ConnectState;

.field public static final enum ConnectStateConnecting:Lcom/smartsoft/ble/ConnectState;

.field public static final enum ConnectStateDisconnected:Lcom/smartsoft/ble/ConnectState;

.field public static final enum ConnectStateDisconnecting:Lcom/smartsoft/ble/ConnectState;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 52
    new-instance v0, Lcom/smartsoft/ble/ConnectState;

    const-string v1, "ConnectStateDisconnected"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/smartsoft/ble/ConnectState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartsoft/ble/ConnectState;->ConnectStateDisconnected:Lcom/smartsoft/ble/ConnectState;

    .line 53
    new-instance v1, Lcom/smartsoft/ble/ConnectState;

    const-string v3, "ConnectStateConnecting"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/smartsoft/ble/ConnectState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/smartsoft/ble/ConnectState;->ConnectStateConnecting:Lcom/smartsoft/ble/ConnectState;

    .line 54
    new-instance v3, Lcom/smartsoft/ble/ConnectState;

    const-string v5, "ConnectStateConnected"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/smartsoft/ble/ConnectState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/smartsoft/ble/ConnectState;->ConnectStateConnected:Lcom/smartsoft/ble/ConnectState;

    .line 55
    new-instance v5, Lcom/smartsoft/ble/ConnectState;

    const-string v7, "ConnectStateDisconnecting"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/smartsoft/ble/ConnectState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/smartsoft/ble/ConnectState;->ConnectStateDisconnecting:Lcom/smartsoft/ble/ConnectState;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/smartsoft/ble/ConnectState;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 51
    sput-object v7, Lcom/smartsoft/ble/ConnectState;->$VALUES:[Lcom/smartsoft/ble/ConnectState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/smartsoft/ble/ConnectState;
    .locals 1

    .line 51
    const-class v0, Lcom/smartsoft/ble/ConnectState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/smartsoft/ble/ConnectState;

    return-object p0
.end method

.method public static values()[Lcom/smartsoft/ble/ConnectState;
    .locals 1

    .line 51
    sget-object v0, Lcom/smartsoft/ble/ConnectState;->$VALUES:[Lcom/smartsoft/ble/ConnectState;

    invoke-virtual {v0}, [Lcom/smartsoft/ble/ConnectState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/smartsoft/ble/ConnectState;

    return-object v0
.end method
