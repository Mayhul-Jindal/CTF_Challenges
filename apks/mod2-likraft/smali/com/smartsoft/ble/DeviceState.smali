.class final enum Lcom/smartsoft/ble/DeviceState;
.super Ljava/lang/Enum;
.source "Bluetooth.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/smartsoft/ble/DeviceState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/smartsoft/ble/DeviceState;

.field public static final enum StatePoweredOff:Lcom/smartsoft/ble/DeviceState;

.field public static final enum StatePoweredOn:Lcom/smartsoft/ble/DeviceState;

.field public static final enum StateResetting:Lcom/smartsoft/ble/DeviceState;

.field public static final enum StateUnauthorized:Lcom/smartsoft/ble/DeviceState;

.field public static final enum StateUnknown:Lcom/smartsoft/ble/DeviceState;

.field public static final enum StateUnsupported:Lcom/smartsoft/ble/DeviceState;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 43
    new-instance v0, Lcom/smartsoft/ble/DeviceState;

    const-string v1, "StateUnknown"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/smartsoft/ble/DeviceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartsoft/ble/DeviceState;->StateUnknown:Lcom/smartsoft/ble/DeviceState;

    .line 44
    new-instance v1, Lcom/smartsoft/ble/DeviceState;

    const-string v3, "StateResetting"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/smartsoft/ble/DeviceState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/smartsoft/ble/DeviceState;->StateResetting:Lcom/smartsoft/ble/DeviceState;

    .line 45
    new-instance v3, Lcom/smartsoft/ble/DeviceState;

    const-string v5, "StateUnsupported"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/smartsoft/ble/DeviceState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/smartsoft/ble/DeviceState;->StateUnsupported:Lcom/smartsoft/ble/DeviceState;

    .line 46
    new-instance v5, Lcom/smartsoft/ble/DeviceState;

    const-string v7, "StateUnauthorized"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/smartsoft/ble/DeviceState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/smartsoft/ble/DeviceState;->StateUnauthorized:Lcom/smartsoft/ble/DeviceState;

    .line 47
    new-instance v7, Lcom/smartsoft/ble/DeviceState;

    const-string v9, "StatePoweredOff"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/smartsoft/ble/DeviceState;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/smartsoft/ble/DeviceState;->StatePoweredOff:Lcom/smartsoft/ble/DeviceState;

    .line 48
    new-instance v9, Lcom/smartsoft/ble/DeviceState;

    const-string v11, "StatePoweredOn"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/smartsoft/ble/DeviceState;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/smartsoft/ble/DeviceState;->StatePoweredOn:Lcom/smartsoft/ble/DeviceState;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/smartsoft/ble/DeviceState;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 42
    sput-object v11, Lcom/smartsoft/ble/DeviceState;->$VALUES:[Lcom/smartsoft/ble/DeviceState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/smartsoft/ble/DeviceState;
    .locals 1

    .line 42
    const-class v0, Lcom/smartsoft/ble/DeviceState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/smartsoft/ble/DeviceState;

    return-object p0
.end method

.method public static values()[Lcom/smartsoft/ble/DeviceState;
    .locals 1

    .line 42
    sget-object v0, Lcom/smartsoft/ble/DeviceState;->$VALUES:[Lcom/smartsoft/ble/DeviceState;

    invoke-virtual {v0}, [Lcom/smartsoft/ble/DeviceState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/smartsoft/ble/DeviceState;

    return-object v0
.end method
