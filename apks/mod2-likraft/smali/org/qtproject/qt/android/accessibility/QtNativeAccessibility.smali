.class Lorg/qtproject/qt/android/accessibility/QtNativeAccessibility;
.super Ljava/lang/Object;
.source "QtNativeAccessibility.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static native childIdListForAccessibleObject(I)[I
.end method

.method static native clickAction(I)Z
.end method

.method static native descriptionForAccessibleObject(I)Ljava/lang/String;
.end method

.method static native hitTest(FF)I
.end method

.method static native parentId(I)I
.end method

.method static native populateNode(ILandroid/view/accessibility/AccessibilityNodeInfo;)Z
.end method

.method static native screenRect(I)Landroid/graphics/Rect;
.end method

.method static native scrollBackward(I)Z
.end method

.method static native scrollForward(I)Z
.end method

.method static native setActive(Z)V
.end method

.method static native valueForAccessibleObject(I)Ljava/lang/String;
.end method
