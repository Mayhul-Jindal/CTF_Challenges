.class Lcom/smartsoft/ble/NativeClass;
.super Ljava/lang/Object;
.source "Bluetooth.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native dataReceived(ILjava/lang/String;[B)V
.end method

.method public static native deviceAdded(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
.end method

.method public static native deviceConnected(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public static native deviceDisconnected(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public static native deviceUpdateName(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public static native deviceUpdateRSSI(ILjava/lang/String;I)V
.end method

.method public static native permissionStateChanged(IZLjava/lang/String;)V
.end method

.method public static native readyToWrite(ILjava/lang/String;)V
.end method
