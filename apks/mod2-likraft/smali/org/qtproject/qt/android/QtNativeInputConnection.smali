.class Lorg/qtproject/qt/android/QtNativeInputConnection;
.super Ljava/lang/Object;
.source "QtInputConnection.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static native beginBatchEdit()Z
.end method

.method static native commitCompletion(Ljava/lang/String;I)Z
.end method

.method static native commitText(Ljava/lang/String;I)Z
.end method

.method static native copy()Z
.end method

.method static native copyURL()Z
.end method

.method static native cut()Z
.end method

.method static native deleteSurroundingText(II)Z
.end method

.method static native endBatchEdit()Z
.end method

.method static native finishComposingText()Z
.end method

.method static native getCursorCapsMode(I)I
.end method

.method static native getExtractedText(III)Lorg/qtproject/qt/android/QtExtractedText;
.end method

.method static native getSelectedText(I)Ljava/lang/String;
.end method

.method static native getTextAfterCursor(II)Ljava/lang/String;
.end method

.method static native getTextBeforeCursor(II)Ljava/lang/String;
.end method

.method static native paste()Z
.end method

.method static native selectAll()Z
.end method

.method static native setComposingRegion(II)Z
.end method

.method static native setComposingText(Ljava/lang/String;I)Z
.end method

.method static native setSelection(II)Z
.end method

.method static native updateCursorPosition()Z
.end method
