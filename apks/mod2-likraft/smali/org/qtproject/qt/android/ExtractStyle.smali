.class public Lorg/qtproject/qt/android/ExtractStyle;
.super Ljava/lang/Object;
.source "ExtractStyle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/qtproject/qt/android/ExtractStyle$DrawableCache;,
        Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final DisableDrawableStatesLabels:[Ljava/lang/String;

.field final DrawableStates:[I

.field final DrawableStatesLabels:[Ljava/lang/String;

.field final EMPTY_STATE_SET:[I

.field final ENABLED_FOCUSED_SELECTED_STATE_SET:[I

.field final ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

.field final ENABLED_FOCUSED_STATE_SET:[I

.field final ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

.field final ENABLED_SELECTED_STATE_SET:[I

.field final ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

.field final ENABLED_STATE_SET:[I

.field final ENABLED_WINDOW_FOCUSED_STATE_SET:[I

.field final FOCUSED_SELECTED_STATE_SET:[I

.field final FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

.field final FOCUSED_STATE_SET:[I

.field final FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

.field final PRESSED_ENABLED_FOCUSED_SELECTED_STATE_SET:[I

.field final PRESSED_ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

.field final PRESSED_ENABLED_FOCUSED_STATE_SET:[I

.field final PRESSED_ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

.field final PRESSED_ENABLED_SELECTED_STATE_SET:[I

.field final PRESSED_ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

.field final PRESSED_ENABLED_STATE_SET:[I

.field final PRESSED_ENABLED_WINDOW_FOCUSED_STATE_SET:[I

.field final PRESSED_FOCUSED_SELECTED_STATE_SET:[I

.field final PRESSED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

.field final PRESSED_FOCUSED_STATE_SET:[I

.field final PRESSED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

.field final PRESSED_SELECTED_STATE_SET:[I

.field final PRESSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

.field final PRESSED_STATE_SET:[I

.field final PRESSED_WINDOW_FOCUSED_STATE_SET:[I

.field final SELECTED_STATE_SET:[I

.field final SELECTED_WINDOW_FOCUSED_STATE_SET:[I

.field final WINDOW_FOCUSED_STATE_SET:[I

.field final defaultBackgroundColor:I

.field final defaultTextColor:I

.field m_context:Landroid/content/Context;

.field private final m_drawableCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/qtproject/qt/android/ExtractStyle$DrawableCache;",
            ">;"
        }
    .end annotation
.end field

.field final m_extractPath:Ljava/lang/String;

.field final m_minimal:Z

.field final m_theme:Landroid/content/res/Resources$Theme;

.field final sScaleTypeArray:[Ljava/lang/String;

.field final viewDrawableStatesState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 15

    move-object v1, p0

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    new-array v0, v0, [I

    .line 102
    fill-array-data v0, :array_0

    iput-object v0, v1, Lorg/qtproject/qt/android/ExtractStyle;->viewDrawableStatesState:[I

    const/4 v0, 0x0

    new-array v2, v0, [I

    .line 114
    iput-object v2, v1, Lorg/qtproject/qt/android/ExtractStyle;->EMPTY_STATE_SET:[I

    const/4 v2, 0x1

    new-array v3, v2, [I

    const v4, 0x101009e

    aput v4, v3, v0

    .line 115
    iput-object v3, v1, Lorg/qtproject/qt/android/ExtractStyle;->ENABLED_STATE_SET:[I

    new-array v4, v2, [I

    const v5, 0x101009c

    aput v5, v4, v0

    .line 116
    iput-object v4, v1, Lorg/qtproject/qt/android/ExtractStyle;->FOCUSED_STATE_SET:[I

    new-array v5, v2, [I

    const v6, 0x10100a1

    aput v6, v5, v0

    .line 117
    iput-object v5, v1, Lorg/qtproject/qt/android/ExtractStyle;->SELECTED_STATE_SET:[I

    new-array v6, v2, [I

    const v7, 0x10100a7

    aput v7, v6, v0

    .line 118
    iput-object v6, v1, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_STATE_SET:[I

    new-array v7, v2, [I

    const v8, 0x101009d

    aput v8, v7, v0

    .line 119
    iput-object v7, v1, Lorg/qtproject/qt/android/ExtractStyle;->WINDOW_FOCUSED_STATE_SET:[I

    .line 120
    invoke-direct {p0, v3, v4}, Lorg/qtproject/qt/android/ExtractStyle;->stateSetUnion([I[I)[I

    move-result-object v8

    iput-object v8, v1, Lorg/qtproject/qt/android/ExtractStyle;->ENABLED_FOCUSED_STATE_SET:[I

    .line 121
    invoke-direct {p0, v3, v5}, Lorg/qtproject/qt/android/ExtractStyle;->stateSetUnion([I[I)[I

    move-result-object v9

    iput-object v9, v1, Lorg/qtproject/qt/android/ExtractStyle;->ENABLED_SELECTED_STATE_SET:[I

    .line 122
    invoke-direct {p0, v3, v7}, Lorg/qtproject/qt/android/ExtractStyle;->stateSetUnion([I[I)[I

    move-result-object v10

    iput-object v10, v1, Lorg/qtproject/qt/android/ExtractStyle;->ENABLED_WINDOW_FOCUSED_STATE_SET:[I

    .line 123
    invoke-direct {p0, v4, v5}, Lorg/qtproject/qt/android/ExtractStyle;->stateSetUnion([I[I)[I

    move-result-object v10

    iput-object v10, v1, Lorg/qtproject/qt/android/ExtractStyle;->FOCUSED_SELECTED_STATE_SET:[I

    .line 124
    invoke-direct {p0, v4, v7}, Lorg/qtproject/qt/android/ExtractStyle;->stateSetUnion([I[I)[I

    move-result-object v11

    iput-object v11, v1, Lorg/qtproject/qt/android/ExtractStyle;->FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    .line 125
    invoke-direct {p0, v5, v7}, Lorg/qtproject/qt/android/ExtractStyle;->stateSetUnion([I[I)[I

    move-result-object v11

    iput-object v11, v1, Lorg/qtproject/qt/android/ExtractStyle;->SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 126
    invoke-direct {p0, v8, v5}, Lorg/qtproject/qt/android/ExtractStyle;->stateSetUnion([I[I)[I

    move-result-object v11

    iput-object v11, v1, Lorg/qtproject/qt/android/ExtractStyle;->ENABLED_FOCUSED_SELECTED_STATE_SET:[I

    .line 127
    invoke-direct {p0, v8, v7}, Lorg/qtproject/qt/android/ExtractStyle;->stateSetUnion([I[I)[I

    move-result-object v8

    iput-object v8, v1, Lorg/qtproject/qt/android/ExtractStyle;->ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    .line 128
    invoke-direct {p0, v9, v7}, Lorg/qtproject/qt/android/ExtractStyle;->stateSetUnion([I[I)[I

    move-result-object v8

    iput-object v8, v1, Lorg/qtproject/qt/android/ExtractStyle;->ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 129
    invoke-direct {p0, v10, v7}, Lorg/qtproject/qt/android/ExtractStyle;->stateSetUnion([I[I)[I

    move-result-object v8

    iput-object v8, v1, Lorg/qtproject/qt/android/ExtractStyle;->FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 130
    invoke-direct {p0, v11, v7}, Lorg/qtproject/qt/android/ExtractStyle;->stateSetUnion([I[I)[I

    move-result-object v8

    iput-object v8, v1, Lorg/qtproject/qt/android/ExtractStyle;->ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 131
    invoke-direct {p0, v6, v7}, Lorg/qtproject/qt/android/ExtractStyle;->stateSetUnion([I[I)[I

    move-result-object v8

    iput-object v8, v1, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_WINDOW_FOCUSED_STATE_SET:[I

    .line 132
    invoke-direct {p0, v6, v5}, Lorg/qtproject/qt/android/ExtractStyle;->stateSetUnion([I[I)[I

    move-result-object v8

    iput-object v8, v1, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_SELECTED_STATE_SET:[I

    .line 133
    invoke-direct {p0, v8, v7}, Lorg/qtproject/qt/android/ExtractStyle;->stateSetUnion([I[I)[I

    move-result-object v8

    iput-object v8, v1, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 134
    invoke-direct {p0, v6, v4}, Lorg/qtproject/qt/android/ExtractStyle;->stateSetUnion([I[I)[I

    move-result-object v8

    iput-object v8, v1, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_FOCUSED_STATE_SET:[I

    .line 135
    invoke-direct {p0, v8, v7}, Lorg/qtproject/qt/android/ExtractStyle;->stateSetUnion([I[I)[I

    move-result-object v9

    iput-object v9, v1, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    .line 136
    invoke-direct {p0, v8, v5}, Lorg/qtproject/qt/android/ExtractStyle;->stateSetUnion([I[I)[I

    move-result-object v8

    iput-object v8, v1, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_FOCUSED_SELECTED_STATE_SET:[I

    .line 137
    invoke-direct {p0, v8, v7}, Lorg/qtproject/qt/android/ExtractStyle;->stateSetUnion([I[I)[I

    move-result-object v8

    iput-object v8, v1, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 138
    invoke-direct {p0, v6, v3}, Lorg/qtproject/qt/android/ExtractStyle;->stateSetUnion([I[I)[I

    move-result-object v3

    iput-object v3, v1, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_ENABLED_STATE_SET:[I

    .line 139
    invoke-direct {p0, v3, v7}, Lorg/qtproject/qt/android/ExtractStyle;->stateSetUnion([I[I)[I

    move-result-object v6

    iput-object v6, v1, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_ENABLED_WINDOW_FOCUSED_STATE_SET:[I

    .line 140
    invoke-direct {p0, v3, v5}, Lorg/qtproject/qt/android/ExtractStyle;->stateSetUnion([I[I)[I

    move-result-object v6

    iput-object v6, v1, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_ENABLED_SELECTED_STATE_SET:[I

    .line 141
    invoke-direct {p0, v6, v7}, Lorg/qtproject/qt/android/ExtractStyle;->stateSetUnion([I[I)[I

    move-result-object v6

    iput-object v6, v1, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 142
    invoke-direct {p0, v3, v4}, Lorg/qtproject/qt/android/ExtractStyle;->stateSetUnion([I[I)[I

    move-result-object v3

    iput-object v3, v1, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_ENABLED_FOCUSED_STATE_SET:[I

    .line 143
    invoke-direct {p0, v3, v7}, Lorg/qtproject/qt/android/ExtractStyle;->stateSetUnion([I[I)[I

    move-result-object v4

    iput-object v4, v1, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    .line 144
    invoke-direct {p0, v3, v5}, Lorg/qtproject/qt/android/ExtractStyle;->stateSetUnion([I[I)[I

    move-result-object v3

    iput-object v3, v1, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_ENABLED_FOCUSED_SELECTED_STATE_SET:[I

    .line 145
    invoke-direct {p0, v3, v7}, Lorg/qtproject/qt/android/ExtractStyle;->stateSetUnion([I[I)[I

    move-result-object v3

    iput-object v3, v1, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    const/16 v3, 0xb

    new-array v3, v3, [I

    .line 151
    fill-array-data v3, :array_1

    iput-object v3, v1, Lorg/qtproject/qt/android/ExtractStyle;->DrawableStates:[I

    const-string v4, "active"

    const-string v5, "checked"

    const-string v6, "enabled"

    const-string v7, "focused"

    const-string v8, "pressed"

    const-string v9, "selected"

    const-string v10, "window_focused"

    const-string v11, "background"

    const-string v12, "multiline"

    const-string v13, "activated"

    const-string v14, "accelerated"

    .line 156
    filled-new-array/range {v4 .. v14}, [Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lorg/qtproject/qt/android/ExtractStyle;->DrawableStatesLabels:[Ljava/lang/String;

    const-string v4, "inactive"

    const-string v5, "unchecked"

    const-string v6, "disabled"

    const-string v7, "not_focused"

    const-string v8, "no_pressed"

    const-string v9, "unselected"

    const-string v10, "window_not_focused"

    const-string v11, "background"

    const-string v12, "multiline"

    const-string v13, "activated"

    const-string v14, "accelerated"

    .line 158
    filled-new-array/range {v4 .. v14}, [Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lorg/qtproject/qt/android/ExtractStyle;->DisableDrawableStatesLabels:[Ljava/lang/String;

    const-string v4, "MATRIX"

    const-string v5, "FIT_XY"

    const-string v6, "FIT_START"

    const-string v7, "FIT_CENTER"

    const-string v8, "FIT_END"

    const-string v9, "CENTER"

    const-string v10, "CENTER_CROP"

    const-string v11, "CENTER_INSIDE"

    .line 161
    filled-new-array/range {v4 .. v11}, [Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lorg/qtproject/qt/android/ExtractStyle;->sScaleTypeArray:[Ljava/lang/String;

    .line 172
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v1, Lorg/qtproject/qt/android/ExtractStyle;->m_drawableCache:Ljava/util/HashMap;

    move/from16 v3, p3

    .line 175
    iput-boolean v3, v1, Lorg/qtproject/qt/android/ExtractStyle;->m_minimal:Z

    .line 176
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lorg/qtproject/qt/android/ExtractStyle;->m_extractPath:Ljava/lang/String;

    .line 177
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "Qt JAVA"

    const-string v5, "Cannot create Android style directory."

    .line 179
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object/from16 v4, p1

    .line 180
    iput-object v4, v1, Lorg/qtproject/qt/android/ExtractStyle;->m_context:Landroid/content/Context;

    .line 181
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    iput-object v4, v1, Lorg/qtproject/qt/android/ExtractStyle;->m_theme:Landroid/content/res/Resources$Theme;

    const/4 v5, 0x3

    new-array v5, v5, [I

    .line 182
    fill-array-data v5, :array_2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 187
    invoke-virtual {v4, v0, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, v1, Lorg/qtproject/qt/android/ExtractStyle;->defaultBackgroundColor:I

    const v0, 0xffffff

    .line 188
    invoke-virtual {v4, v2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    if-ne v2, v0, :cond_1

    const/4 v2, 0x2

    .line 190
    invoke-virtual {v4, v2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 191
    :cond_1
    iput v2, v1, Lorg/qtproject/qt/android/ExtractStyle;->defaultTextColor:I

    .line 192
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 195
    :try_start_0
    new-instance v2, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "style.json"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;-><init>(Ljava/lang/String;)V

    .line 196
    invoke-virtual {v2}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->beginObject()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v0, "defaultStyle"

    .line 198
    invoke-virtual {v2, v0}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->name(Ljava/lang/String;)Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;

    move-result-object v0

    invoke-direct {p0}, Lorg/qtproject/qt/android/ExtractStyle;->extractDefaultPalette()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->value(Lorg/json/JSONObject;)V

    .line 199
    invoke-direct {p0, v2}, Lorg/qtproject/qt/android/ExtractStyle;->extractWindow(Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;)V

    const-string v0, "buttonStyle"

    .line 200
    invoke-virtual {v2, v0}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->name(Ljava/lang/String;)Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;

    move-result-object v0

    const v3, 0x1010048

    const-string v4, "QPushButton"

    invoke-virtual {p0, v3, v4}, Lorg/qtproject/qt/android/ExtractStyle;->extractTextAppearanceInformation(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->value(Lorg/json/JSONObject;)V

    const-string v0, "spinnerStyle"

    .line 201
    invoke-virtual {v2, v0}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->name(Ljava/lang/String;)Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;

    move-result-object v0

    const v3, 0x1010081

    const-string v4, "QComboBox"

    invoke-virtual {p0, v3, v4}, Lorg/qtproject/qt/android/ExtractStyle;->extractTextAppearanceInformation(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->value(Lorg/json/JSONObject;)V

    const v0, 0x1010078

    const-string v3, "progressBarStyleHorizontal"

    const-string v4, "QProgressBar"

    .line 202
    invoke-virtual {p0, v2, v0, v3, v4}, Lorg/qtproject/qt/android/ExtractStyle;->extractProgressBar(Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;ILjava/lang/String;Ljava/lang/String;)V

    const v0, 0x101007a

    const-string v3, "progressBarStyleLarge"

    const/4 v4, 0x0

    .line 203
    invoke-virtual {p0, v2, v0, v3, v4}, Lorg/qtproject/qt/android/ExtractStyle;->extractProgressBar(Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;ILjava/lang/String;Ljava/lang/String;)V

    const v0, 0x1010079

    const-string v3, "progressBarStyleSmall"

    .line 204
    invoke-virtual {p0, v2, v0, v3, v4}, Lorg/qtproject/qt/android/ExtractStyle;->extractProgressBar(Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;ILjava/lang/String;Ljava/lang/String;)V

    const v0, 0x1010077

    const-string v3, "progressBarStyle"

    .line 205
    invoke-virtual {p0, v2, v0, v3, v4}, Lorg/qtproject/qt/android/ExtractStyle;->extractProgressBar(Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;ILjava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-virtual {p0, v2}, Lorg/qtproject/qt/android/ExtractStyle;->extractAbsSeekBar(Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;)V

    .line 207
    invoke-virtual {p0, v2}, Lorg/qtproject/qt/android/ExtractStyle;->extractSwitch(Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;)V

    const v0, 0x101006c

    const-string v3, "checkboxStyle"

    const-string v5, "QCheckBox"

    .line 208
    invoke-virtual {p0, v2, v0, v3, v5}, Lorg/qtproject/qt/android/ExtractStyle;->extractCompoundButton(Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;ILjava/lang/String;Ljava/lang/String;)V

    const-string v0, "editTextStyle"

    .line 209
    invoke-virtual {v2, v0}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->name(Ljava/lang/String;)Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;

    move-result-object v0

    const v3, 0x101006e

    const-string v5, "QLineEdit"

    invoke-virtual {p0, v3, v5}, Lorg/qtproject/qt/android/ExtractStyle;->extractTextAppearanceInformation(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->value(Lorg/json/JSONObject;)V

    const v0, 0x101007e

    const-string v3, "radioButtonStyle"

    const-string v5, "QRadioButton"

    .line 210
    invoke-virtual {p0, v2, v0, v3, v5}, Lorg/qtproject/qt/android/ExtractStyle;->extractCompoundButton(Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;ILjava/lang/String;Ljava/lang/String;)V

    const-string v0, "textViewStyle"

    .line 211
    invoke-virtual {v2, v0}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->name(Ljava/lang/String;)Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;

    move-result-object v0

    const v3, 0x1010084

    const-string v5, "QWidget"

    invoke-virtual {p0, v3, v5}, Lorg/qtproject/qt/android/ExtractStyle;->extractTextAppearanceInformation(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->value(Lorg/json/JSONObject;)V

    const-string v0, "scrollViewStyle"

    .line 212
    invoke-virtual {v2, v0}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->name(Ljava/lang/String;)Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;

    move-result-object v0

    const v3, 0x1010080

    const-string v5, "QAbstractScrollArea"

    invoke-virtual {p0, v3, v5}, Lorg/qtproject/qt/android/ExtractStyle;->extractTextAppearanceInformation(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->value(Lorg/json/JSONObject;)V

    .line 213
    invoke-virtual {p0, v2}, Lorg/qtproject/qt/android/ExtractStyle;->extractListView(Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;)V

    const-string v0, "listSeparatorTextViewStyle"

    .line 214
    invoke-virtual {v2, v0}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->name(Ljava/lang/String;)Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;

    move-result-object v0

    const v3, 0x1010208

    invoke-virtual {p0, v3, v4}, Lorg/qtproject/qt/android/ExtractStyle;->extractTextAppearanceInformation(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->value(Lorg/json/JSONObject;)V

    .line 215
    invoke-direct {p0, v2}, Lorg/qtproject/qt/android/ExtractStyle;->extractItemsStyle(Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;)V

    const v0, 0x101004b

    const-string v3, "buttonStyleToggle"

    .line 216
    invoke-virtual {p0, v2, v0, v3, v4}, Lorg/qtproject/qt/android/ExtractStyle;->extractCompoundButton(Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;ILjava/lang/String;Ljava/lang/String;)V

    .line 217
    invoke-virtual {p0, v2}, Lorg/qtproject/qt/android/ExtractStyle;->extractCalendar(Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;)V

    .line 218
    invoke-virtual {p0, v2}, Lorg/qtproject/qt/android/ExtractStyle;->extractToolBar(Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;)V

    const-string v0, "actionButtonStyle"

    .line 219
    invoke-virtual {v2, v0}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->name(Ljava/lang/String;)Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;

    move-result-object v0

    const v3, 0x10102d8

    const-string v5, "QToolButton"

    invoke-virtual {p0, v3, v5}, Lorg/qtproject/qt/android/ExtractStyle;->extractTextAppearanceInformation(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->value(Lorg/json/JSONObject;)V

    const-string v0, "actionBarTabTextStyle"

    .line 220
    invoke-virtual {v2, v0}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->name(Ljava/lang/String;)Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;

    move-result-object v0

    const v3, 0x10102f5

    invoke-virtual {p0, v3, v4}, Lorg/qtproject/qt/android/ExtractStyle;->extractTextAppearanceInformation(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->value(Lorg/json/JSONObject;)V

    const-string v0, "actionBarTabStyle"

    .line 221
    invoke-virtual {v2, v0}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->name(Ljava/lang/String;)Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;

    move-result-object v0

    const v3, 0x10102f3

    invoke-virtual {p0, v3, v4}, Lorg/qtproject/qt/android/ExtractStyle;->extractTextAppearanceInformation(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->value(Lorg/json/JSONObject;)V

    const-string v0, "actionOverflowButtonStyle"

    .line 222
    invoke-virtual {v2, v0}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->name(Ljava/lang/String;)Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;

    move-result-object v0

    const v3, 0x10102f6

    invoke-virtual {p0, v3, v4}, Lorg/qtproject/qt/android/ExtractStyle;->extractImageViewInformation(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->value(Lorg/json/JSONObject;)V

    .line 223
    invoke-virtual {p0, v2}, Lorg/qtproject/qt/android/ExtractStyle;->extractTabBar(Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 225
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 227
    :goto_0
    invoke-virtual {v2}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->endObject()V

    .line 228
    invoke-virtual {v2}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 230
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void

    :array_0
    .array-data 4
        0x101009c
        0x101009d
        0x101009e
        0x10100a1
        0x10100a7
        0x10102fe
        0x101031b
        0x1010367
        0x1010368
        0x1010369
    .end array-data

    :array_1
    .array-data 4
        0x10100a2
        0x10100a0
        0x101009e
        0x101009c
        0x10100a7
        0x10100a1
        0x101009d
        0x1020000
        0x101034d
        0x10102fe
        0x101031b
    .end array-data

    :array_2
    .array-data 4
        0x1010031
        0x1010036
        0x1010098
    .end array-data
.end method

.method private extractDefaultPalette()Lorg/json/JSONObject;
    .locals 3

    const v0, 0x1010034

    .line 1765
    invoke-virtual {p0, v0}, Lorg/qtproject/qt/android/ExtractStyle;->extractTextAppearance(I)Lorg/json/JSONObject;

    move-result-object v0

    :try_start_0
    const-string v1, "defaultBackgroundColor"

    .line 1767
    iget v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->defaultBackgroundColor:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "defaultTextColorPrimary"

    .line 1768
    iget v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->defaultTextColor:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1770
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method private extractItemStyle(ILjava/lang/String;)Lorg/json/JSONObject;
    .locals 4

    const/4 v0, 0x0

    .line 1555
    :try_start_0
    iget-object v1, p0, Lorg/qtproject/qt/android/ExtractStyle;->m_context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    .line 1556
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    :goto_0
    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    .line 1558
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    goto :goto_0

    :cond_0
    if-eq v1, v2, :cond_1

    return-object v0

    .line 1563
    :cond_1
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    .line 1564
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v2, "TextView"

    .line 1565
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const p1, 0x1010084

    const v2, 0x101039e

    .line 1566
    invoke-virtual {p0, p1, p2, v2, v1}, Lorg/qtproject/qt/android/ExtractStyle;->extractTextAppearanceInformation(ILjava/lang/String;ILandroid/util/AttributeSet;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    :cond_2
    const-string v1, "CheckedTextView"

    .line 1567
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1568
    invoke-virtual {p0, p2}, Lorg/qtproject/qt/android/ExtractStyle;->extractCheckedTextView(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1570
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    return-object v0
.end method

.method private extractItemsStyle(Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;)V
    .locals 9

    const-string v0, "simple_selectable_list_item"

    const-string v1, "simple_dropdown_item_1line"

    const-string v2, "simple_spinner_dropdown_item"

    const-string v3, "simple_spinner_item"

    const-string v4, "simple_list_item_single_choice"

    const-string v5, "simple_list_item_multiple_choice"

    const-string v6, "simple_list_item_checked"

    const-string v7, "simple_list_item"

    const v8, 0x1090003

    .line 1577
    :try_start_0
    invoke-direct {p0, v8, v7}, Lorg/qtproject/qt/android/ExtractStyle;->extractItemStyle(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 1579
    invoke-virtual {p1, v7}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->name(Ljava/lang/String;)Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;

    move-result-object v7

    invoke-virtual {v7, v8}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->value(Lorg/json/JSONObject;)V

    :cond_0
    const v7, 0x1090005

    .line 1580
    invoke-direct {p0, v7, v6}, Lorg/qtproject/qt/android/ExtractStyle;->extractItemStyle(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 1582
    invoke-virtual {p1, v6}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->name(Ljava/lang/String;)Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;

    move-result-object v6

    invoke-virtual {v6, v7}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->value(Lorg/json/JSONObject;)V

    :cond_1
    const v6, 0x1090010

    .line 1583
    invoke-direct {p0, v6, v5}, Lorg/qtproject/qt/android/ExtractStyle;->extractItemStyle(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 1585
    invoke-virtual {p1, v5}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->name(Ljava/lang/String;)Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;

    move-result-object v5

    invoke-virtual {v5, v6}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->value(Lorg/json/JSONObject;)V

    :cond_2
    const v5, 0x109000f

    .line 1586
    invoke-direct {p0, v5, v4}, Lorg/qtproject/qt/android/ExtractStyle;->extractItemStyle(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 1588
    invoke-virtual {p1, v4}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->name(Ljava/lang/String;)Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;

    move-result-object v4

    invoke-virtual {v4, v5}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->value(Lorg/json/JSONObject;)V

    :cond_3
    const v4, 0x1090008

    .line 1589
    invoke-direct {p0, v4, v3}, Lorg/qtproject/qt/android/ExtractStyle;->extractItemStyle(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 1591
    invoke-virtual {p1, v3}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->name(Ljava/lang/String;)Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;

    move-result-object v3

    invoke-virtual {v3, v4}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->value(Lorg/json/JSONObject;)V

    :cond_4
    const v3, 0x1090009

    .line 1592
    invoke-direct {p0, v3, v2}, Lorg/qtproject/qt/android/ExtractStyle;->extractItemStyle(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 1594
    invoke-virtual {p1, v2}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->name(Ljava/lang/String;)Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;

    move-result-object v2

    invoke-virtual {v2, v3}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->value(Lorg/json/JSONObject;)V

    :cond_5
    const v2, 0x109000a

    .line 1595
    invoke-direct {p0, v2, v1}, Lorg/qtproject/qt/android/ExtractStyle;->extractItemStyle(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 1597
    invoke-virtual {p1, v1}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->name(Ljava/lang/String;)Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->value(Lorg/json/JSONObject;)V

    :cond_6
    const v1, 0x1090015

    .line 1598
    invoke-direct {p0, v1, v0}, Lorg/qtproject/qt/android/ExtractStyle;->extractItemStyle(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 1600
    invoke-virtual {p1, v0}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->name(Ljava/lang/String;)Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->value(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1602
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    :goto_0
    return-void
.end method

.method static native extractNativeChunkInfo20(J)[I
.end method

.method private extractWindow(Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;)V
    .locals 8

    .line 1740
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const/4 v1, 0x2

    :try_start_0
    new-array v1, v1, [I

    const/4 v2, 0x0

    const v3, 0x1010054

    aput v3, v1, v2

    const/4 v2, 0x1

    const v4, 0x1010055

    aput v4, v1, v2

    .line 1746
    invoke-static {v1}, Ljava/util/Arrays;->sort([I)V

    const v2, 0x1010076

    .line 1747
    invoke-direct {p0, v2, v1}, Lorg/qtproject/qt/android/ExtractStyle;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 1748
    invoke-direct {p0, v1}, Lorg/qtproject/qt/android/ExtractStyle;->getArrayListFromIntArray([I)Ljava/util/ArrayList;

    move-result-object v1

    .line 1750
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    const-string v6, "Window_windowBackground"

    const-string v7, "16842870_Window_windowBackground"

    .line 1752
    invoke-virtual {p0, v3, v7, v5}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1754
    :cond_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v3, "Window_windowFrame"

    const-string v4, "16842870_Window_windowFrame"

    .line 1756
    invoke-virtual {p0, v1, v4, v5}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1757
    :cond_1
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    const-string v1, "windowStyle"

    .line 1758
    invoke-virtual {p1, v1}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->name(Ljava/lang/String;)Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->value(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1760
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private findPatchesMarings(Landroid/graphics/drawable/Drawable;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 557
    const-class v0, Landroid/graphics/drawable/NinePatchDrawable;

    const-string v1, "mNinePatch"

    invoke-virtual {p0, v0, v1}, Lorg/qtproject/qt/android/ExtractStyle;->tryGetAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 559
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/NinePatch;

    goto :goto_0

    .line 561
    :cond_0
    const-class v0, Landroid/graphics/drawable/NinePatchDrawable;

    const-string v2, "mNinePatchState"

    invoke-virtual {p0, v0, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 562
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/NinePatch;

    .line 564
    :goto_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/graphics/NinePatch;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mNativeChunk"

    invoke-virtual {p0, v0, v1}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/qtproject/qt/android/ExtractStyle;->extractNativeChunkInfo20(J)[I

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/qtproject/qt/android/ExtractStyle;->getJsonChunkInfo([I)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method private findStateIndex(ILjava/util/HashMap;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 612
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 613
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 614
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private getAnimatedStateListDrawable(Ljava/lang/Object;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 9

    .line 620
    invoke-direct {p0, p1, p2}, Lorg/qtproject/qt/android/ExtractStyle;->getStateListDrawable(Ljava/lang/Object;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    :try_start_0
    const-string v0, "android.graphics.drawable.AnimatedStateListDrawable"

    .line 622
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mState"

    .line 623
    invoke-virtual {p0, v0, v1}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 626
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mStateIds"

    .line 627
    invoke-virtual {p0, v0, v1}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v1}, Lorg/qtproject/qt/android/ExtractStyle;->getStateIds(Ljava/lang/Object;)Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "mTransitions"

    .line 628
    invoke-virtual {p0, v0, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lorg/qtproject/qt/android/ExtractStyle;->getStateTransitions(Ljava/lang/Object;)Ljava/util/HashMap;

    move-result-object p1

    .line 630
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 631
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    move-result v2

    invoke-direct {p0, v2, v1}, Lorg/qtproject/qt/android/ExtractStyle;->findStateIndex(ILjava/util/HashMap;)I

    move-result v2

    .line 632
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const/16 v5, 0x20

    shr-long/2addr v3, v5

    long-to-int v3, v3

    invoke-direct {p0, v3, v1}, Lorg/qtproject/qt/android/ExtractStyle;->findStateIndex(ILjava/util/HashMap;)I

    move-result v3

    .line 634
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "from"

    .line 635
    invoke-virtual {v4, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "to"

    .line 636
    invoke-virtual {v4, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "reverse"

    .line 637
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    shr-long v5, v6, v5

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "stateslist"

    .line 639
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 640
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "transition"

    .line 641
    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 645
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-object p2
.end method

.method private getAnimationDrawable(Landroid/graphics/drawable/AnimationDrawable;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 9

    .line 499
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "type"

    const-string v2, "animation"

    .line 501
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "oneshot"

    .line 502
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->isOneShot()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 503
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v1

    .line 504
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 506
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "duration"

    .line 507
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "drawable"

    .line 508
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "__"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {p0, v6, v7, v8}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 509
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-string p1, "frames"

    .line 511
    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 513
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-object v0
.end method

.method private getArrayListFromIntArray([I)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 916
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 917
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p1, v2

    .line 918
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getGradientDrawable(Landroid/graphics/drawable/GradientDrawable;)Lorg/json/JSONObject;
    .locals 6

    const-string v0, "gradient"

    .line 443
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "type"

    .line 445
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 446
    invoke-virtual {p1}, Landroid/graphics/drawable/GradientDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    .line 447
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "shape"

    const-string v4, "mShape"

    .line 448
    invoke-virtual {v2, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "mGradient"

    .line 449
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "mOrientation"

    .line 450
    invoke-virtual {v2, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable$Orientation;

    if-eqz v0, :cond_0

    const-string v3, "orientation"

    .line 452
    invoke-virtual {v0}, Landroid/graphics/drawable/GradientDrawable$Orientation;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string v0, "mGradientColors"

    .line 453
    invoke-virtual {v2, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    if-eqz v0, :cond_1

    const-string v3, "colors"

    const/4 v4, 0x0

    .line 455
    array-length v5, v0

    invoke-direct {p0, v0, v4, v5}, Lorg/qtproject/qt/android/ExtractStyle;->getJsonArray([III)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    const-string v0, "positions"

    const-string v3, "mPositions"

    .line 456
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [F

    invoke-direct {p0, v3}, Lorg/qtproject/qt/android/ExtractStyle;->getJsonArray([F)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "strokeWidth"

    const-string v3, "mStrokeWidth"

    .line 457
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "strokeDashWidth"

    const-string v3, "mStrokeDashWidth"

    .line 458
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v1, v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v0, "strokeDashGap"

    const-string v3, "mStrokeDashGap"

    .line 459
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v1, v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v0, "radius"

    const-string v3, "mRadius"

    .line 460
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v1, v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v0, "mRadiusArray"

    .line 461
    invoke-virtual {v2, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    if-eqz v0, :cond_2

    const-string v3, "radiusArray"

    .line 463
    invoke-direct {p0, v0}, Lorg/qtproject/qt/android/ExtractStyle;->getJsonArray([F)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    const-string v0, "mPadding"

    .line 464
    invoke-virtual {v2, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    if-eqz v0, :cond_3

    const-string v3, "padding"

    .line 466
    invoke-direct {p0, v0}, Lorg/qtproject/qt/android/ExtractStyle;->getJsonRect(Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    const-string v0, "width"

    const-string v3, "mWidth"

    .line 467
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "height"

    const-string v3, "mHeight"

    .line 468
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "innerRadiusRatio"

    const-string v3, "mInnerRadiusRatio"

    .line 469
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v1, v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v0, "thicknessRatio"

    const-string v3, "mThicknessRatio"

    .line 470
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v1, v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v0, "innerRadius"

    const-string v3, "mInnerRadius"

    .line 471
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "thickness"

    const-string v3, "mThickness"

    .line 472
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 474
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v1
.end method

.method private getJsonArray([F)Lorg/json/JSONArray;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 537
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    if-eqz p1, :cond_0

    .line 539
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p1, v2

    float-to-double v3, v3

    .line 540
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getJsonArray([III)Lorg/json/JSONArray;
    .locals 2

    .line 529
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    add-int/2addr p3, p2

    :goto_0
    if-ge p2, p3, :cond_0

    .line 532
    aget v1, p1, p2

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getJsonChunkInfo([I)Lorg/json/JSONObject;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 545
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 549
    aget v2, p1, v1

    const/4 v3, 0x3

    invoke-direct {p0, p1, v3, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getJsonArray([III)Lorg/json/JSONArray;

    move-result-object v2

    const-string v4, "xdivs"

    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 550
    aget v2, p1, v1

    add-int/2addr v2, v3

    const/4 v4, 0x1

    aget v5, p1, v4

    invoke-direct {p0, p1, v2, v5}, Lorg/qtproject/qt/android/ExtractStyle;->getJsonArray([III)Lorg/json/JSONArray;

    move-result-object v2

    const-string v5, "ydivs"

    invoke-virtual {v0, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 551
    aget v1, p1, v1

    add-int/2addr v1, v3

    aget v2, p1, v4

    add-int/2addr v1, v2

    const/4 v2, 0x2

    aget v2, p1, v2

    invoke-direct {p0, p1, v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getJsonArray([III)Lorg/json/JSONArray;

    move-result-object p1

    const-string v1, "colors"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method private getJsonRect(Landroid/graphics/Rect;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 519
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 520
    iget v1, p1, Landroid/graphics/Rect;->left:I

    const-string v2, "left"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 521
    iget v1, p1, Landroid/graphics/Rect;->top:I

    const-string v2, "top"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 522
    iget v1, p1, Landroid/graphics/Rect;->right:I

    const-string v2, "right"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 523
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    const-string v1, "bottom"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v0
.end method

.method private getLayerDrawable(Ljava/lang/Object;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 8

    .line 388
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 389
    check-cast p1, Landroid/graphics/drawable/LayerDrawable;

    .line 390
    invoke-virtual {p1}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v1

    .line 392
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 394
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    move v4, v3

    .line 397
    :cond_0
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "__"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {p0, v5, v6, v7}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "id"

    .line 398
    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 399
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string p2, "type"

    const-string v1, "layer"

    .line 401
    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 402
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 403
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/LayerDrawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "padding"

    .line 404
    invoke-direct {p0, p2}, Lorg/qtproject/qt/android/ExtractStyle;->getJsonRect(Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    const-string p1, "layers"

    .line 405
    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 407
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    return-object v0
.end method

.method private getRippleDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;
    .locals 6

    .line 568
    invoke-direct {p0, p1, p2}, Lorg/qtproject/qt/android/ExtractStyle;->getLayerDrawable(Ljava/lang/Object;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 569
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "android.graphics.drawable.RippleDrawable"

    .line 571
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "mState"

    .line 572
    invoke-virtual {p0, v2, v3}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "mask"

    const-string v5, "mMask"

    .line 573
    invoke-virtual {p0, v2, v5}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, p2, p3}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v1, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz v3, :cond_0

    const-string p1, "maxRadius"

    .line 575
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    const-string p3, "mMaxRadius"

    invoke-virtual {p0, p2, p3}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p2

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 576
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string p2, "mColor"

    invoke-virtual {p0, p1, p2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_0

    const-string p2, "color"

    .line 578
    invoke-virtual {p0, p1}, Lorg/qtproject/qt/android/ExtractStyle;->getColorStateList(Landroid/content/res/ColorStateList;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v1, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string p1, "ripple"

    .line 580
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 582
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method private getRotateDrawable(Landroid/graphics/drawable/RotateDrawable;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 8

    .line 480
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "type"

    const-string v2, "rotate"

    .line 482
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 483
    invoke-virtual {p1}, Landroid/graphics/drawable/RotateDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    .line 484
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "drawable"

    .line 485
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "getDrawable"

    const/4 v6, 0x0

    new-array v7, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {v4, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 v4, 0x0

    invoke-virtual {p0, p1, p2, v4}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "pivotX"

    const-string p2, "mPivotX"

    .line 486
    invoke-virtual {p0, v2, p2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result p2

    float-to-double v3, p2

    invoke-virtual {v0, p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string p1, "pivotXRel"

    const-string p2, "mPivotXRel"

    .line 487
    invoke-virtual {p0, v2, p2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p1, "pivotY"

    const-string p2, "mPivotY"

    .line 488
    invoke-virtual {p0, v2, p2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result p2

    float-to-double v3, p2

    invoke-virtual {v0, p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string p1, "pivotYRel"

    const-string p2, "mPivotYRel"

    .line 489
    invoke-virtual {p0, v2, p2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p1, "fromDegrees"

    const-string p2, "mFromDegrees"

    .line 490
    invoke-virtual {p0, v2, p2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result p2

    float-to-double v3, p2

    invoke-virtual {v0, p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string p1, "toDegrees"

    const-string p2, "mToDegrees"

    .line 491
    invoke-virtual {p0, v2, p2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result p2

    float-to-double v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 493
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method private getStateIds(Ljava/lang/Object;)Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 600
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 601
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "mSize"

    invoke-virtual {p0, v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    .line 602
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "mKeys"

    invoke-virtual {p0, v2, v3}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 603
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "mValues"

    invoke-virtual {p0, v3, v4}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    .line 606
    aget v4, v2, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aget v5, p1, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private getStateListDrawable(Ljava/lang/Object;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 13

    const-string v0, "stateslist"

    .line 413
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 415
    :try_start_0
    check-cast p1, Landroid/graphics/drawable/StateListDrawable;

    .line 416
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 418
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    const/4 v5, 0x0

    if-ge v3, v4, :cond_0

    .line 419
    const-class v3, Landroid/graphics/drawable/StateListDrawable;

    const-string v4, "getStateCount"

    new-array v6, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v3, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_0

    .line 421
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/StateListDrawable;->getStateCount()I

    move-result v3

    :goto_0
    move v4, v5

    :goto_1
    if-ge v4, v3, :cond_3

    .line 423
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 424
    const-class v7, Landroid/graphics/drawable/StateListDrawable;

    const-string v8, "getStateDrawable"

    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/Class;

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v10, v5

    invoke-virtual {v7, v8, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v5

    invoke-virtual {v7, p1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/Drawable;

    .line 425
    const-class v8, Landroid/graphics/drawable/StateListDrawable;

    const-string v10, "getStateSet"

    new-array v11, v9, [Ljava/lang/Class;

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v11, v5

    invoke-virtual {v8, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v5

    invoke-virtual {v8, p1, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [I

    if-eqz v8, :cond_1

    const-string v9, "states"

    .line 427
    invoke-virtual {p0, v8}, Lorg/qtproject/qt/android/ExtractStyle;->getStatesList([I)Lorg/json/JSONObject;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    const-string v9, "drawable"

    .line 428
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "__"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v8, :cond_2

    invoke-virtual {p0, v8}, Lorg/qtproject/qt/android/ExtractStyle;->getStatesName([I)Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "state_pos_"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_2
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    invoke-virtual {p0, v7, v8, v10}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v6, v9, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 429
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_3
    const-string p2, "type"

    .line 431
    invoke-virtual {v1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 432
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 433
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/StateListDrawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "padding"

    .line 434
    invoke-direct {p0, p2}, Lorg/qtproject/qt/android/ExtractStyle;->getJsonRect(Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 435
    :cond_4
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 437
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-object v1
.end method

.method private getStateTransitions(Ljava/lang/Object;)Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 588
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 589
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "mSize"

    invoke-virtual {p0, v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    .line 590
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "mKeys"

    invoke-virtual {p0, v2, v3}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [J

    .line 591
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "mValues"

    invoke-virtual {p0, v3, v4}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [J

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    .line 594
    aget-wide v4, v2, v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aget-wide v5, p1, v3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private getVGroup(Ljava/lang/Object;)Lorg/json/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 688
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "type"

    const-string v2, "group"

    .line 689
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 690
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "mGroupName"

    .line 691
    invoke-virtual {p0, v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "name"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "mRotate"

    .line 692
    invoke-virtual {p0, v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v2

    float-to-double v2, v2

    const-string v4, "rotate"

    invoke-virtual {v0, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v2, "mPivotX"

    .line 693
    invoke-virtual {p0, v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v2

    float-to-double v2, v2

    const-string v4, "pivotX"

    invoke-virtual {v0, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v2, "mPivotY"

    .line 694
    invoke-virtual {p0, v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v2

    float-to-double v2, v2

    const-string v4, "pivotY"

    invoke-virtual {v0, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v2, "mScaleX"

    .line 695
    invoke-virtual {p0, v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v2

    float-to-double v2, v2

    const-string v4, "scaleX"

    invoke-virtual {v0, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v2, "mScaleY"

    .line 696
    invoke-virtual {p0, v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v2

    float-to-double v2, v2

    const-string v4, "scaleY"

    invoke-virtual {v0, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v2, "mTranslateX"

    .line 697
    invoke-virtual {p0, v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v2

    float-to-double v2, v2

    const-string v4, "translateX"

    invoke-virtual {v0, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v2, "mTranslateY"

    .line 698
    invoke-virtual {p0, v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v2

    float-to-double v2, v2

    const-string v4, "translateY"

    invoke-virtual {v0, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v2, "mChildren"

    .line 700
    invoke-virtual {p0, v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 701
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    if-eqz p1, :cond_2

    .line 703
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 704
    invoke-virtual {v1, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 705
    invoke-direct {p0, v3}, Lorg/qtproject/qt/android/ExtractStyle;->getVGroup(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 707
    :cond_0
    invoke-direct {p0, v3}, Lorg/qtproject/qt/android/ExtractStyle;->getVPath(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_1
    const-string p1, "children"

    .line 709
    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    return-object v0
.end method

.method private getVPath(Ljava/lang/Object;)Lorg/json/JSONObject;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 651
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 652
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "type"

    const-string v3, "path"

    .line 653
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "mPathName"

    .line 654
    invoke-virtual {p0, v1, v3}, Lorg/qtproject/qt/android/ExtractStyle;->tryGetAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "name"

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "mNodes"

    .line 655
    invoke-virtual {p0, v1, v3}, Lorg/qtproject/qt/android/ExtractStyle;->tryGetAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    .line 656
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    .line 658
    array-length v6, v3

    move v7, v5

    :goto_0
    if-ge v7, v6, :cond_0

    aget-object v8, v3, v7

    .line 659
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 660
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    const-string v11, "mType"

    invoke-virtual {p0, v10, v11}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/reflect/Field;->getChar(Ljava/lang/Object;)C

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v2, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 661
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    const-string v11, "mParams"

    invoke-virtual {p0, v10, v11}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [F

    invoke-direct {p0, v8}, Lorg/qtproject/qt/android/ExtractStyle;->getJsonArray([F)Lorg/json/JSONArray;

    move-result-object v8

    const-string v10, "params"

    invoke-virtual {v9, v10, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 662
    invoke-virtual {v4, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    const-string v2, "nodes"

    .line 664
    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    new-array v2, v5, [Ljava/lang/Class;

    const-string v3, "isClipPath"

    .line 666
    invoke-virtual {v1, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    const-string v3, "isClip"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "mStrokeColor"

    .line 668
    invoke-virtual {p0, v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->tryGetAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    if-nez v3, :cond_2

    return-object v0

    .line 671
    :cond_2
    invoke-virtual {p0, v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    const-string v3, "strokeColor"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "mStrokeWidth"

    .line 672
    invoke-virtual {p0, v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v2

    float-to-double v2, v2

    const-string v4, "strokeWidth"

    invoke-virtual {v0, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v2, "mFillColor"

    .line 673
    invoke-virtual {p0, v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    const-string v3, "fillColor"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "mStrokeAlpha"

    .line 674
    invoke-virtual {p0, v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v2

    float-to-double v2, v2

    const-string v4, "strokeAlpha"

    invoke-virtual {v0, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v2, "mFillRule"

    .line 675
    invoke-virtual {p0, v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    const-string v3, "fillRule"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "mFillAlpha"

    .line 676
    invoke-virtual {p0, v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v2

    float-to-double v2, v2

    const-string v4, "fillAlpha"

    invoke-virtual {v0, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v2, "mTrimPathStart"

    .line 677
    invoke-virtual {p0, v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v2

    float-to-double v2, v2

    const-string v4, "trimPathStart"

    invoke-virtual {v0, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v2, "mTrimPathEnd"

    .line 678
    invoke-virtual {p0, v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v2

    float-to-double v2, v2

    const-string v4, "trimPathEnd"

    invoke-virtual {v0, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v2, "mTrimPathOffset"

    .line 679
    invoke-virtual {p0, v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v2

    float-to-double v2, v2

    const-string v4, "trimPathOffset"

    invoke-virtual {v0, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v2, "mStrokeLineCap"

    .line 680
    invoke-virtual {p0, v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Paint$Cap;

    const-string v3, "strokeLineCap"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "mStrokeLineJoin"

    .line 681
    invoke-virtual {p0, v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Paint$Join;

    const-string v3, "strokeLineJoin"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "mStrokeMiterlimit"

    .line 682
    invoke-virtual {p0, v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result p1

    float-to-double v1, p1

    const-string p1, "strokeMiterlimit"

    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    return-object v0
.end method

.method private getVectorDrawable(Ljava/lang/Object;)Lorg/json/JSONObject;
    .locals 5

    .line 715
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "type"

    const-string v2, "vector"

    .line 717
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "android.graphics.drawable.VectorDrawable"

    .line 718
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "mVectorState"

    .line 719
    invoke-virtual {p0, v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 720
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "mTint"

    .line 721
    invoke-virtual {p0, v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_0

    const-string v3, "tintList"

    .line 723
    invoke-virtual {p0, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getColorStateList(Landroid/content/res/ColorStateList;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "tintMode"

    const-string v3, "mTintMode"

    .line 724
    invoke-virtual {p0, v1, v3}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string v2, "mVPathRenderer"

    .line 726
    invoke-virtual {p0, v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 727
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "baseWidth"

    const-string v3, "mBaseWidth"

    .line 728
    invoke-virtual {p0, v1, v3}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v2, "baseHeight"

    const-string v3, "mBaseHeight"

    .line 729
    invoke-virtual {p0, v1, v3}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v2, "viewportWidth"

    const-string v3, "mViewportWidth"

    .line 730
    invoke-virtual {p0, v1, v3}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v2, "viewportHeight"

    const-string v3, "mViewportHeight"

    .line 731
    invoke-virtual {p0, v1, v3}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v2, "rootAlpha"

    const-string v3, "mRootAlpha"

    .line 732
    invoke-virtual {p0, v1, v3}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "rootName"

    const-string v3, "mRootName"

    .line 733
    invoke-virtual {p0, v1, v3}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "rootGroup"

    const-string v3, "mRootGroup"

    .line 734
    invoke-virtual {p0, v1, v3}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lorg/qtproject/qt/android/ExtractStyle;->getVGroup(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 736
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method private obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;
    .locals 4

    .line 909
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 910
    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->m_context:Landroid/content/Context;

    iget-object v3, p0, Lorg/qtproject/qt/android/ExtractStyle;->m_theme:Landroid/content/res/Resources$Theme;

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V

    .line 911
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 912
    iget p1, v0, Landroid/util/TypedValue;->data:I

    invoke-virtual {v1, p1, p2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    return-object p1
.end method

.method private stateSetUnion([I[I)[I
    .locals 11

    .line 238
    :try_start_0
    array-length v0, p1

    .line 239
    array-length v1, p2

    add-int v2, v0, v1

    .line 240
    new-array v2, v2, [I

    .line 246
    iget-object v3, p0, Lorg/qtproject/qt/android/ExtractStyle;->viewDrawableStatesState:[I

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    move v8, v7

    :goto_0
    if-ge v5, v4, :cond_2

    aget v9, v3, v5

    if-ge v6, v0, :cond_0

    .line 247
    aget v10, p1, v6

    if-ne v10, v9, :cond_0

    add-int/lit8 v10, v8, 0x1

    .line 248
    aput v9, v2, v8

    add-int/lit8 v6, v6, 0x1

    :goto_1
    move v8, v10

    goto :goto_2

    :cond_0
    if-ge v7, v1, :cond_1

    .line 250
    aget v10, p2, v7

    if-ne v10, v9, :cond_1

    add-int/lit8 v10, v8, 0x1

    .line 251
    aput v9, v2, v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    return-object v2

    :catch_0
    move-exception p1

    .line 258
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method extractAbsSeekBar(Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;)V
    .locals 8

    const v0, 0x101007b

    const-string v1, "QSlider"

    .line 1463
    invoke-virtual {p0, v0, v1}, Lorg/qtproject/qt/android/ExtractStyle;->extractTextAppearanceInformation(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1464
    invoke-virtual {p0, v1, v0}, Lorg/qtproject/qt/android/ExtractStyle;->extractProgressBarInfo(Lorg/json/JSONObject;I)V

    const/4 v2, 0x2

    :try_start_0
    new-array v2, v2, [I

    const/4 v3, 0x0

    const v4, 0x1010142

    aput v4, v2, v3

    const/4 v3, 0x1

    const v5, 0x1010143

    aput v5, v2, v3

    .line 1470
    invoke-static {v2}, Ljava/util/Arrays;->sort([I)V

    .line 1471
    invoke-direct {p0, v0, v2}, Lorg/qtproject/qt/android/ExtractStyle;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1472
    invoke-direct {p0, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getArrayListFromIntArray([I)Ljava/util/ArrayList;

    move-result-object v2

    .line 1474
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v4, "SeekBar_thumb"

    const-string v6, "16842875_SeekBar_thumb"

    const/4 v7, 0x0

    .line 1476
    invoke-virtual {p0, v3, v6, v7}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string v3, "SeekBar_thumbOffset"

    .line 1477
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    const/4 v4, -0x1

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1478
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    const-string v0, "seekBarStyle"

    .line 1479
    invoke-virtual {p1, v0}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->name(Ljava/lang/String;)Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->value(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1481
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method extractCalendar(Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;)V
    .locals 19

    move-object/from16 v1, p0

    const v0, 0x101035d

    const-string v2, "QCalendarWidget"

    .line 1631
    invoke-virtual {v1, v0, v2}, Lorg/qtproject/qt/android/ExtractStyle;->extractTextAppearanceInformation(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const/16 v3, 0xb

    :try_start_0
    new-array v3, v3, [I

    const v4, 0x101033d

    const/4 v5, 0x0

    aput v4, v3, v5

    const v6, 0x1010343

    const/4 v7, 0x1

    aput v6, v3, v7

    const/4 v8, 0x2

    const v9, 0x1010342

    aput v9, v3, v8

    const/4 v8, 0x3

    const v10, 0x101033e

    aput v10, v3, v8

    const/4 v8, 0x4

    const v11, 0x1010341

    aput v11, v3, v8

    const/4 v8, 0x5

    const v12, 0x1010344

    aput v12, v3, v8

    const v8, 0x1010345

    const/4 v13, 0x6

    aput v8, v3, v13

    const/4 v14, 0x7

    const v15, 0x1010346

    aput v15, v3, v14

    const/16 v14, 0x8

    const v16, 0x1010347

    aput v16, v3, v14

    const/16 v14, 0x9

    const v17, 0x1010349

    aput v17, v3, v14

    const/16 v14, 0xa

    const v18, 0x1010348

    aput v18, v3, v14

    .line 1646
    invoke-static {v3}, Ljava/util/Arrays;->sort([I)V

    .line 1647
    invoke-direct {v1, v0, v3}, Lorg/qtproject/qt/android/ExtractStyle;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1648
    invoke-direct {v1, v3}, Lorg/qtproject/qt/android/ExtractStyle;->getArrayListFromIntArray([I)Ljava/util/ArrayList;

    move-result-object v3

    .line 1650
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v14

    invoke-virtual {v0, v14}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    if-eqz v14, :cond_0

    const-string v15, "CalendarView_selectedDateVerticalBar"

    const-string v8, "16843613_CalendarView_selectedDateVerticalBar"

    const/4 v12, 0x0

    .line 1652
    invoke-virtual {v1, v14, v8, v12}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v2, v15, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1654
    :cond_0
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    const/4 v12, -0x1

    invoke-virtual {v0, v8, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    const-string v14, "CalendarView_dateTextAppearance"

    .line 1655
    invoke-virtual {v1, v8, v7}, Lorg/qtproject/qt/android/ExtractStyle;->extractTextAppearance(IZ)Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v2, v14, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1656
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v0, v8, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    const-string v12, "CalendarView_weekDayTextAppearance"

    .line 1657
    invoke-virtual {v1, v8, v7}, Lorg/qtproject/qt/android/ExtractStyle;->extractTextAppearance(IZ)Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v2, v12, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "CalendarView_firstDayOfWeek"

    .line 1660
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-virtual {v2, v8, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "CalendarView_focusedMonthDateColor"

    .line 1661
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    invoke-virtual {v2, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "CalendarView_selectedWeekBackgroundColor"

    .line 1662
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    invoke-virtual {v2, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "CalendarView_showWeekNumber"

    .line 1663
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {v2, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v4, "CalendarView_shownWeekCount"

    .line 1664
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v0, v6, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    invoke-virtual {v2, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "CalendarView_unfocusedMonthDateColor"

    const v6, 0x1010344

    .line 1665
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    invoke-virtual {v2, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "CalendarView_weekNumberColor"

    const v6, 0x1010345

    .line 1666
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    invoke-virtual {v2, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "CalendarView_weekSeparatorLineColor"

    const v6, 0x1010346

    .line 1667
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1668
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    const-string v0, "calendarViewStyle"

    move-object/from16 v3, p1

    .line 1669
    invoke-virtual {v3, v0}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->name(Ljava/lang/String;)Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->value(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1671
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method extractCheckedTextView(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5

    const v0, 0x10103c8

    .line 1532
    invoke-virtual {p0, v0, p1}, Lorg/qtproject/qt/android/ExtractStyle;->extractTextAppearanceInformation(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [I

    const/4 v2, 0x0

    const v3, 0x1010108

    aput v3, v1, v2

    .line 1538
    invoke-static {v1}, Ljava/util/Arrays;->sort([I)V

    const v2, 0x101043f

    .line 1539
    invoke-direct {p0, v2, v1}, Lorg/qtproject/qt/android/ExtractStyle;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 1540
    invoke-direct {p0, v1}, Lorg/qtproject/qt/android/ExtractStyle;->getArrayListFromIntArray([I)Ljava/util/ArrayList;

    move-result-object v1

    .line 1542
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v3, "CheckedTextView_checkMark"

    .line 1544
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_CheckedTextView_checkMark"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x0

    invoke-virtual {p0, v1, p1, v4}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1545
    :cond_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1547
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method extractCompoundButton(Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;ILjava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1391
    invoke-virtual {p0, p2, p4}, Lorg/qtproject/qt/android/ExtractStyle;->extractTextAppearanceInformation(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object p4

    .line 1393
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 1394
    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->m_context:Landroid/content/Context;

    iget-object v3, p0, Lorg/qtproject/qt/android/ExtractStyle;->m_theme:Landroid/content/res/Resources$Theme;

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V

    .line 1395
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    new-array v2, v3, [I

    const v3, 0x1010107

    const/4 v4, 0x0

    aput v3, v2, v4

    .line 1397
    iget v0, v0, Landroid/util/TypedValue;->data:I

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1398
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1399
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v1, :cond_0

    :try_start_0
    const-string v0, "CompoundButton_button"

    .line 1403
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "_CompoundButton_button"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p2, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p4, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1404
    :cond_0
    invoke-virtual {p1, p3}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->name(Ljava/lang/String;)Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;

    move-result-object p1

    invoke-virtual {p1, p4}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->value(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1406
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public extractImageViewInformation(ILjava/lang/String;)Lorg/json/JSONObject;
    .locals 12

    .line 1347
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1349
    :try_start_0
    invoke-virtual {p0, p1, v0, p2}, Lorg/qtproject/qt/android/ExtractStyle;->extractViewInformation(ILorg/json/JSONObject;Ljava/lang/String;)V

    const/16 p2, 0x8

    new-array p2, p2, [I

    const v1, 0x1010119

    const/4 v2, 0x0

    aput v1, p2, v2

    const/4 v3, 0x1

    const v4, 0x1010122

    aput v4, p2, v3

    const/4 v3, 0x2

    const v5, 0x101011e

    aput v5, p2, v3

    const/4 v3, 0x3

    const v5, 0x101011f

    aput v5, p2, v3

    const/4 v3, 0x4

    const v6, 0x1010120

    aput v6, p2, v3

    const/4 v3, 0x5

    const v7, 0x101011d

    aput v7, p2, v3

    const/4 v3, 0x6

    const v8, 0x1010123

    aput v8, p2, v3

    const/4 v3, 0x7

    const v9, 0x1010121

    aput v9, p2, v3

    .line 1362
    invoke-static {p2}, Ljava/util/Arrays;->sort([I)V

    .line 1363
    invoke-direct {p0, p1, p2}, Lorg/qtproject/qt/android/ExtractStyle;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 1364
    invoke-direct {p0, p2}, Lorg/qtproject/qt/android/ExtractStyle;->getArrayListFromIntArray([I)Ljava/util/ArrayList;

    move-result-object p2

    .line 1366
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v10, "ImageView_src"

    .line 1368
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "_ImageView_src"

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v11, 0x0

    invoke-virtual {p0, v1, p1, v11}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, v10, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string p1, "ImageView_baselineAlignBottom"

    .line 1370
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v3, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p1, "ImageView_adjustViewBounds"

    .line 1371
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v3, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p1, "ImageView_maxWidth"

    .line 1372
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const v4, 0x7fffffff

    invoke-virtual {v3, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "ImageView_maxHeight"

    .line 1373
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v3, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1374
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v1, -0x1

    invoke-virtual {v3, p1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    if-ltz p1, :cond_1

    const-string v1, "ImageView_scaleType"

    .line 1376
    iget-object v4, p0, Lorg/qtproject/qt/android/ExtractStyle;->sScaleTypeArray:[Ljava/lang/String;

    aget-object p1, v4, p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1378
    :cond_1
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {v3, p1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    if-eqz p1, :cond_2

    const-string v1, "ImageView_tint"

    .line 1380
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_2
    const-string p1, "ImageView_cropToPadding"

    .line 1382
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p2

    invoke-virtual {v3, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1383
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1385
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method extractListView(Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;)V
    .locals 9

    const v0, 0x1010074

    const-string v1, "QListView"

    .line 1607
    invoke-virtual {p0, v0, v1}, Lorg/qtproject/qt/android/ExtractStyle;->extractTextAppearanceInformation(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const/4 v2, 0x2

    :try_start_0
    new-array v2, v2, [I

    const v3, 0x1010129

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v5, 0x1

    const v6, 0x101012a

    aput v6, v2, v5

    .line 1613
    invoke-static {v2}, Ljava/util/Arrays;->sort([I)V

    .line 1614
    invoke-direct {p0, v0, v2}, Lorg/qtproject/qt/android/ExtractStyle;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1615
    invoke-direct {p0, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getArrayListFromIntArray([I)Ljava/util/ArrayList;

    move-result-object v2

    .line 1617
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v5, "ListView_divider"

    const-string v7, "16842868_ListView_divider"

    const/4 v8, 0x0

    .line 1619
    invoke-virtual {p0, v3, v7, v8}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string v3, "ListView_dividerHeight"

    .line 1621
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1623
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    const-string v0, "listViewStyle"

    .line 1624
    invoke-virtual {p1, v0}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->name(Ljava/lang/String;)Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->value(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1626
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method extractProgressBar(Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const v0, 0x1010077

    .line 1453
    invoke-virtual {p0, v0, p4}, Lorg/qtproject/qt/android/ExtractStyle;->extractTextAppearanceInformation(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object p4

    .line 1455
    :try_start_0
    invoke-virtual {p0, p4, p2}, Lorg/qtproject/qt/android/ExtractStyle;->extractProgressBarInfo(Lorg/json/JSONObject;I)V

    .line 1456
    invoke-virtual {p1, p3}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->name(Ljava/lang/String;)Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;

    move-result-object p1

    invoke-virtual {p1, p4}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->value(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1458
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method extractProgressBarInfo(Lorg/json/JSONObject;I)V
    .locals 11

    const/4 v0, 0x7

    :try_start_0
    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101013f

    aput v2, v0, v1

    const/4 v1, 0x1

    const v3, 0x101011f

    aput v3, v0, v1

    const/4 v1, 0x2

    const v4, 0x1010140

    aput v4, v0, v1

    const/4 v1, 0x3

    const v5, 0x1010120

    aput v5, v0, v1

    const/4 v1, 0x4

    const v6, 0x101013d

    aput v6, v0, v1

    const/4 v1, 0x5

    const v7, 0x101013c

    aput v7, v0, v1

    const/4 v1, 0x6

    const v8, 0x101013b

    aput v8, v0, v1

    .line 1424
    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    .line 1425
    invoke-direct {p0, p2, v0}, Lorg/qtproject/qt/android/ExtractStyle;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1426
    invoke-direct {p0, v0}, Lorg/qtproject/qt/android/ExtractStyle;->getArrayListFromIntArray([I)Ljava/util/ArrayList;

    move-result-object v0

    const-string v9, "ProgressBar_indeterminateDuration"

    .line 1428
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    const/16 v10, 0xfa0

    invoke-virtual {v1, v6, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    invoke-virtual {p1, v9, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v6, "ProgressBar_minWidth"

    .line 1429
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    const/16 v9, 0x18

    invoke-virtual {v1, v2, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    invoke-virtual {p1, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "ProgressBar_maxWidth"

    .line 1430
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const/16 v6, 0x30

    invoke-virtual {v1, v3, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "ProgressBar_minHeight"

    .line 1431
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v1, v3, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "ProgressBar_maxHeight"

    .line 1432
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const/16 v4, 0x1c

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "ProgressBar_progress_id"

    const v3, 0x102000d

    .line 1433
    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "ProgressBar_secondaryProgress_id"

    const v3, 0x102000f

    .line 1434
    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1436
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const-string v4, "ProgressBar_progressDrawable"

    .line 1438
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "_ProgressBar_progressDrawable"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v2, v5, v3}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {p1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1441
    :cond_0
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, "ProgressBar_indeterminateDrawable"

    .line 1443
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "_ProgressBar_indeterminateDrawable"

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v0, p2, v3}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1446
    :cond_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1448
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method extractSwitch(Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;)V
    .locals 16

    move-object/from16 v1, p0

    .line 1486
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const/16 v2, 0xa

    :try_start_0
    new-array v2, v2, [I

    const v3, 0x1010142

    const/4 v4, 0x0

    aput v3, v2, v4

    const v5, 0x101036f

    const/4 v6, 0x1

    aput v5, v2, v6

    const/4 v7, 0x2

    const v8, 0x101036e

    aput v8, v2, v7

    const/4 v7, 0x3

    const v9, 0x1010124

    aput v9, v2, v7

    const/4 v7, 0x4

    const v10, 0x1010125

    aput v10, v2, v7

    const/4 v7, 0x5

    const v11, 0x1010370

    aput v11, v2, v7

    const/4 v7, 0x6

    const v12, 0x1010371

    aput v12, v2, v7

    const/4 v7, 0x7

    const v13, 0x1010372

    aput v13, v2, v7

    const/16 v7, 0x8

    const v14, 0x10104ad

    aput v14, v2, v7

    const/16 v7, 0x9

    const v15, 0x101044c

    aput v15, v2, v7

    .line 1500
    invoke-static {v2}, Ljava/util/Arrays;->sort([I)V

    const v7, 0x101043f

    .line 1501
    invoke-direct {v1, v7, v2}, Lorg/qtproject/qt/android/ExtractStyle;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 1502
    invoke-direct {v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getArrayListFromIntArray([I)Ljava/util/ArrayList;

    move-result-object v2

    .line 1504
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v7, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v8, 0x0

    if-eqz v3, :cond_0

    const-string v15, "Switch_thumb"

    const-string v6, "16843839_Switch_thumb"

    .line 1506
    invoke-virtual {v1, v3, v6, v8}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v15, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1508
    :cond_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v7, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v5, "Switch_track"

    const-string v6, "16843839_Switch_track"

    .line 1510
    invoke-virtual {v1, v3, v6, v8}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    const-string v3, "Switch_textOn"

    .line 1512
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v7, v5}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "Switch_textOff"

    .line 1513
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v7, v5}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "Switch_switchMinWidth"

    .line 1514
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v7, v5, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    invoke-virtual {v0, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "Switch_switchPadding"

    .line 1515
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v7, v5, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    invoke-virtual {v0, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "Switch_thumbTextPadding"

    .line 1516
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v7, v5, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    invoke-virtual {v0, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "Switch_showText"

    .line 1517
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v7, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {v0, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v3, "Switch_splitTrack"

    const v5, 0x101044c

    .line 1518
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v7, v5, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const v3, 0x101036e

    .line 1521
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    invoke-virtual {v7, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    const-string v3, "Switch_switchTextAppearance"

    const/4 v4, 0x1

    .line 1522
    invoke-virtual {v1, v2, v4}, Lorg/qtproject/qt/android/ExtractStyle;->extractTextAppearance(IZ)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1524
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    const-string v2, "switchStyle"

    move-object/from16 v3, p1

    .line 1525
    invoke-virtual {v3, v2}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->name(Ljava/lang/String;)Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->value(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1527
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method extractTabBar(Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;)V
    .locals 10

    const v0, 0x10102f4

    const-string v1, "QTabBar"

    .line 1715
    invoke-virtual {p0, v0, v1}, Lorg/qtproject/qt/android/ExtractStyle;->extractTextAppearanceInformation(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x3

    :try_start_0
    new-array v1, v1, [I

    const v2, 0x1010329

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v4, 0x1

    const v5, 0x101032a

    aput v5, v1, v4

    const/4 v4, 0x2

    const v6, 0x1010129

    aput v6, v1, v4

    .line 1722
    invoke-static {v1}, Ljava/util/Arrays;->sort([I)V

    const v4, 0x10102f3

    .line 1723
    invoke-direct {p0, v4, v1}, Lorg/qtproject/qt/android/ExtractStyle;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 1724
    invoke-direct {p0, v1}, Lorg/qtproject/qt/android/ExtractStyle;->getArrayListFromIntArray([I)Ljava/util/ArrayList;

    move-result-object v1

    .line 1726
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_0

    const-string v7, "LinearLayout_divider"

    const-string v8, "16843507_LinearLayout_divider"

    const/4 v9, 0x0

    .line 1728
    invoke-virtual {p0, v6, v8, v9}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v0, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string v6, "LinearLayout_showDividers"

    .line 1729
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v4, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {v0, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "LinearLayout_dividerPadding"

    .line 1730
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v4, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1732
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    const-string v1, "actionBarTabBarStyle"

    .line 1733
    invoke-virtual {p1, v1}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->name(Ljava/lang/String;)Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->value(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1735
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public extractTextAppearance(I)Lorg/json/JSONObject;
    .locals 1

    const/4 v0, 0x0

    .line 1050
    invoke-virtual {p0, p1, v0}, Lorg/qtproject/qt/android/ExtractStyle;->extractTextAppearance(IZ)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public extractTextAppearance(IZ)Lorg/json/JSONObject;
    .locals 4

    const/16 v0, 0x8

    new-array v0, v0, [I

    .line 1056
    fill-array-data v0, :array_0

    .line 1066
    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    if-eqz p2, :cond_0

    .line 1069
    iget-object p2, p0, Lorg/qtproject/qt/android/ExtractStyle;->m_theme:Landroid/content/res/Resources$Theme;

    invoke-virtual {p2, p1, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    goto :goto_0

    .line 1071
    :cond_0
    invoke-direct {p0, p1, v0}, Lorg/qtproject/qt/android/ExtractStyle;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 1072
    :goto_0
    invoke-direct {p0, v0}, Lorg/qtproject/qt/android/ExtractStyle;->getArrayListFromIntArray([I)Ljava/util/ArrayList;

    move-result-object p2

    .line 1073
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const v1, 0x1010095

    .line 1075
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 1076
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "TextAppearance_textSize"

    const/16 v3, 0xf

    .line 1077
    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_1
    const v1, 0x1010097

    .line 1078
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 1079
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_2

    const-string v2, "TextAppearance_textStyle"

    .line 1080
    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_2
    const v1, 0x1010098

    .line 1081
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v2, "TextAppearance_textColor"

    .line 1083
    invoke-virtual {p0, v1}, Lorg/qtproject/qt/android/ExtractStyle;->getColorStateList(Landroid/content/res/ColorStateList;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    const v1, 0x1010096

    .line 1084
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 1085
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "TextAppearance_typeface"

    .line 1086
    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_4
    const v1, 0x101038c

    .line 1087
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 1088
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    const-string v2, "TextAppearance_textAllCaps"

    .line 1089
    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_5
    const v1, 0x101009a

    .line 1090
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    if-eqz v1, :cond_6

    const-string v2, "TextAppearance_textColorHint"

    .line 1092
    invoke-virtual {p0, v1}, Lorg/qtproject/qt/android/ExtractStyle;->getColorStateList(Landroid/content/res/ColorStateList;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_6
    const v1, 0x101009b

    .line 1093
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    if-eqz v1, :cond_7

    const-string v2, "TextAppearance_textColorLink"

    .line 1095
    invoke-virtual {p0, v1}, Lorg/qtproject/qt/android/ExtractStyle;->getColorStateList(Landroid/content/res/ColorStateList;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_7
    const v1, 0x1010099

    .line 1096
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p2

    .line 1097
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "TextAppearance_textColorHighlight"

    .line 1098
    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1099
    :cond_8
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1101
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-object v0

    nop

    :array_0
    .array-data 4
        0x1010095
        0x1010097
        0x1010098
        0x1010096
        0x101038c
        0x101009a
        0x101009b
        0x1010099
    .end array-data
.end method

.method public extractTextAppearanceInformation(ILjava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    const v0, 0x1010034

    const/4 v1, 0x0

    .line 1111
    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/qtproject/qt/android/ExtractStyle;->extractTextAppearanceInformation(ILjava/lang/String;ILandroid/util/AttributeSet;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public extractTextAppearanceInformation(ILjava/lang/String;ILandroid/util/AttributeSet;)Lorg/json/JSONObject;
    .locals 30

    move-object/from16 v1, p0

    move/from16 v2, p1

    .line 1115
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    .line 1116
    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/qtproject/qt/android/ExtractStyle;->extractViewInformation(ILorg/json/JSONObject;Ljava/lang/String;Landroid/util/AttributeSet;)V

    const/4 v4, -0x1

    move/from16 v5, p3

    if-ne v5, v4, :cond_0

    const v5, 0x1010034

    .line 1122
    :cond_0
    :try_start_0
    new-instance v6, Landroid/util/TypedValue;

    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    .line 1123
    new-instance v7, Landroid/view/ContextThemeWrapper;

    iget-object v8, v1, Lorg/qtproject/qt/android/ExtractStyle;->m_context:Landroid/content/Context;

    iget-object v9, v1, Lorg/qtproject/qt/android/ExtractStyle;->m_theme:Landroid/content/res/Resources$Theme;

    invoke-direct {v7, v8, v9}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V

    .line 1124
    invoke-virtual {v7}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v2, v6, v9}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    new-array v8, v9, [I

    const/4 v10, 0x0

    aput v5, v8, v10

    .line 1128
    iget v5, v6, Landroid/util/TypedValue;->data:I

    invoke-virtual {v7, v5, v8}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 1129
    invoke-virtual {v5, v10, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    .line 1130
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v5, 0x2

    const/4 v11, 0x5

    const/4 v12, 0x3

    const/16 v13, 0xf

    const v14, 0x1010099

    const v15, 0x101038c

    const v16, 0x1010096

    const v17, 0x1010097

    const v18, 0x1010095

    if-eq v8, v4, :cond_1

    new-array v4, v11, [I

    aput v18, v4, v10

    aput v17, v4, v9

    aput v16, v4, v5

    aput v15, v4, v12

    const/16 v19, 0x4

    aput v14, v4, v19

    .line 1146
    invoke-static {v4}, Ljava/util/Arrays;->sort([I)V

    .line 1147
    iget-object v11, v1, Lorg/qtproject/qt/android/ExtractStyle;->m_theme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v11, v8, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 1148
    invoke-direct {v1, v4}, Lorg/qtproject/qt/android/ExtractStyle;->getArrayListFromIntArray([I)Ljava/util/ArrayList;

    move-result-object v4

    .line 1150
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v11

    invoke-virtual {v8, v11, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v11

    .line 1151
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v13

    const/4 v12, -0x1

    invoke-virtual {v8, v13, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    .line 1152
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v8, v5, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 1153
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v12

    invoke-virtual {v8, v12, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v12

    .line 1154
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v8, v4, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 1155
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :cond_1
    move v4, v10

    move v12, v4

    const/4 v5, -0x1

    const/16 v11, 0xf

    const/4 v13, -0x1

    :goto_0
    const/16 v8, 0x44

    new-array v8, v8, [I

    const v14, 0x101016b

    aput v14, v8, v10

    const v22, 0x1010168

    aput v22, v8, v9

    const v23, 0x1010165

    const/16 v20, 0x2

    aput v23, v8, v20

    const v20, 0x1010166

    const/16 v19, 0x3

    aput v20, v8, v19

    const/16 v20, 0x4

    const v23, 0x1010167

    aput v23, v8, v20

    const v20, 0x101016a

    const/16 v23, 0x5

    aput v20, v8, v23

    const/16 v20, 0x6

    const v23, 0x1010169

    aput v23, v8, v20

    const/16 v20, 0x7

    const v23, 0x101014e

    aput v23, v8, v20

    const/16 v20, 0x8

    const v23, 0x101015e

    aput v23, v8, v20

    const/16 v20, 0x9

    const v23, 0x10100b0

    aput v23, v8, v20

    const/16 v20, 0xa

    const v23, 0x10100b1

    aput v23, v8, v20

    const/16 v20, 0xb

    const v23, 0x101016f

    aput v23, v8, v20

    const/16 v20, 0xc

    const v23, 0x101016d

    aput v23, v8, v20

    const/16 v20, 0xd

    const v23, 0x1010170

    aput v23, v8, v20

    const/16 v20, 0xe

    const v23, 0x101016e

    aput v23, v8, v20

    const v20, 0x1010392

    const/16 v23, 0xf

    aput v20, v8, v23

    const/16 v20, 0x10

    const v23, 0x1010393

    aput v23, v8, v20

    const/16 v20, 0x11

    const v23, 0x1010153

    aput v23, v8, v20

    const/16 v20, 0x12

    const v24, 0x1010171

    aput v24, v8, v20

    const/16 v20, 0x13

    const v24, 0x1010362

    aput v24, v8, v20

    const/16 v20, 0x14

    const v25, 0x1010120

    aput v25, v8, v20

    const/16 v20, 0x15

    const v25, 0x1010154

    aput v25, v8, v20

    const/16 v20, 0x16

    const v25, 0x1010155

    aput v25, v8, v20

    const/16 v20, 0x17

    const v25, 0x1010156

    aput v25, v8, v20

    const/16 v20, 0x18

    const v25, 0x1010140

    aput v25, v8, v20

    const/16 v20, 0x19

    const v25, 0x1010157

    aput v25, v8, v20

    const/16 v20, 0x1a

    const v25, 0x101011f

    aput v25, v8, v20

    const/16 v20, 0x1b

    const v25, 0x1010158

    aput v25, v8, v20

    const/16 v20, 0x1c

    const v25, 0x1010159

    aput v25, v8, v20

    const/16 v20, 0x1d

    const v25, 0x101015a

    aput v25, v8, v20

    const/16 v20, 0x1e

    const v25, 0x101013f

    aput v25, v8, v20

    const/16 v20, 0x1f

    const v25, 0x10100af

    aput v25, v8, v20

    const/16 v20, 0x20

    const v25, 0x1010150

    aput v25, v8, v20

    const/16 v20, 0x21

    const v25, 0x101014f

    aput v25, v8, v20

    const/16 v20, 0x22

    const v25, 0x101015b

    aput v25, v8, v20

    const/16 v20, 0x23

    const v25, 0x101015d

    aput v25, v8, v20

    const/16 v20, 0x24

    const v25, 0x10100ab

    aput v25, v8, v20

    const/16 v20, 0x25

    const v25, 0x101021d

    aput v25, v8, v20

    const/16 v20, 0x26

    const v25, 0x101015f

    aput v25, v8, v20

    const/16 v20, 0x27

    const v25, 0x1010152

    aput v25, v8, v20

    const/16 v20, 0x28

    const v25, 0x1010160

    aput v25, v8, v20

    const/16 v20, 0x29

    const v26, 0x1010151

    aput v26, v8, v20

    const/16 v20, 0x2a

    const v26, 0x101016c

    aput v26, v8, v20

    const/16 v20, 0x2b

    const v26, 0x1010161

    aput v26, v8, v20

    const/16 v20, 0x2c

    const v26, 0x1010162

    aput v26, v8, v20

    const/16 v20, 0x2d

    const v26, 0x1010163

    aput v26, v8, v20

    const/16 v20, 0x2e

    const v26, 0x1010164

    aput v26, v8, v20

    const/16 v20, 0x2f

    const v26, 0x101000e

    aput v26, v8, v20

    const/16 v20, 0x30

    const v21, 0x1010099

    aput v21, v8, v20

    const/16 v20, 0x31

    const v26, 0x1010098

    aput v26, v8, v20

    const/16 v20, 0x32

    const v26, 0x101009a

    aput v26, v8, v20

    const/16 v20, 0x33

    const v26, 0x101009b

    aput v26, v8, v20

    const/16 v20, 0x34

    aput v18, v8, v20

    const/16 v20, 0x35

    aput v16, v8, v20

    const/16 v20, 0x36

    aput v17, v8, v20

    const/16 v20, 0x37

    const v26, 0x101015c

    aput v26, v8, v20

    const/16 v20, 0x38

    const v26, 0x1010217

    aput v26, v8, v20

    const/16 v20, 0x39

    const v26, 0x1010218

    aput v26, v8, v20

    const/16 v20, 0x3a

    const v26, 0x1010220

    aput v26, v8, v20

    const/16 v20, 0x3b

    const v26, 0x1010264

    aput v26, v8, v20

    const/16 v20, 0x3c

    const v26, 0x1010265

    aput v26, v8, v20

    const/16 v20, 0x3d

    const v26, 0x1010266

    aput v26, v8, v20

    const/16 v20, 0x3e

    const v26, 0x1010223

    aput v26, v8, v20

    const/16 v20, 0x3f

    const v26, 0x10102c5

    aput v26, v8, v20

    const/16 v20, 0x40

    const v27, 0x10102c6

    aput v27, v8, v20

    const/16 v20, 0x41

    const v28, 0x10102c7

    aput v28, v8, v20

    const/16 v20, 0x42

    const v29, 0x1010316

    aput v29, v8, v20

    const/16 v20, 0x43

    aput v15, v8, v20

    .line 1231
    invoke-static {v8}, Ljava/util/Arrays;->sort([I)V

    .line 1232
    iget v6, v6, Landroid/util/TypedValue;->data:I

    invoke-virtual {v7, v6, v8}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 1233
    invoke-direct {v1, v8}, Lorg/qtproject/qt/android/ExtractStyle;->getArrayListFromIntArray([I)Ljava/util/ArrayList;

    move-result-object v7

    .line 1235
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v6, v8, v11}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    .line 1236
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v11

    invoke-virtual {v6, v11, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    .line 1237
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v13

    invoke-virtual {v6, v13, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    const v13, 0x1010099

    .line 1238
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v13

    invoke-virtual {v6, v13, v12}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v12

    .line 1239
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v13

    invoke-virtual {v6, v13, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    const v13, 0x1010098

    .line 1241
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v13

    invoke-virtual {v6, v13}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v13

    const v15, 0x101009a

    .line 1242
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v15

    invoke-virtual {v6, v15}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v15

    const v16, 0x101009b

    .line 1243
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v9

    const-string v10, "TextAppearance_textSize"

    .line 1245
    invoke-virtual {v3, v10, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v8, "TextAppearance_textStyle"

    .line 1246
    invoke-virtual {v3, v8, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v8, "TextAppearance_typeface"

    .line 1247
    invoke-virtual {v3, v8, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "TextAppearance_textColorHighlight"

    .line 1248
    invoke-virtual {v3, v5, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "TextAppearance_textAllCaps"

    .line 1249
    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    if-eqz v13, :cond_2

    const-string v4, "TextAppearance_textColor"

    .line 1251
    invoke-virtual {v1, v13}, Lorg/qtproject/qt/android/ExtractStyle;->getColorStateList(Landroid/content/res/ColorStateList;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    if-eqz v15, :cond_3

    const-string v4, "TextAppearance_textColorHint"

    .line 1253
    invoke-virtual {v1, v15}, Lorg/qtproject/qt/android/ExtractStyle;->getColorStateList(Landroid/content/res/ColorStateList;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    if-eqz v9, :cond_4

    const-string v4, "TextAppearance_textColorLink"

    .line 1255
    invoke-virtual {v1, v9}, Lorg/qtproject/qt/android/ExtractStyle;->getColorStateList(Landroid/content/res/ColorStateList;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    const-string v4, "TextView_editable"

    .line 1257
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v8, 0x0

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v4, "TextView_inputMethod"

    .line 1258
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "TextView_numeric"

    const v5, 0x1010165

    .line 1259
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v8, 0x0

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "TextView_digits"

    const v5, 0x1010166

    .line 1260
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "TextView_phoneNumber"

    const v5, 0x1010167

    .line 1261
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v8, 0x0

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v4, "TextView_autoText"

    const v5, 0x101016a

    .line 1262
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v4, "TextView_capitalize"

    const v5, 0x1010169

    .line 1263
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v8, -0x1

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "TextView_bufferType"

    const v5, 0x101014e

    .line 1264
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v8, 0x0

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "TextView_selectAllOnFocus"

    const v5, 0x101015e

    .line 1265
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v4, "TextView_autoLink"

    const v5, 0x10100b0

    .line 1266
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "TextView_linksClickable"

    const v5, 0x10100b1

    .line 1267
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v8, 0x1

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v4, "TextView_drawableLeft"

    const v5, 0x101016f

    .line 1268
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "_TextView_drawableLeft"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v1, v5, v8, v9}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "TextView_drawableTop"

    const v5, 0x101016d

    .line 1269
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "_TextView_drawableTop"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v5, v8, v9}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "TextView_drawableRight"

    const v5, 0x1010170

    .line 1270
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "_TextView_drawableRight"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v5, v8, v9}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "TextView_drawableBottom"

    const v5, 0x101016e

    .line 1271
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "_TextView_drawableBottom"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v5, v8, v9}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "TextView_drawableStart"

    const v5, 0x1010392

    .line 1272
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "_TextView_drawableStart"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v5, v8, v9}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "TextView_drawableEnd"

    const v5, 0x1010393

    .line 1273
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "_TextView_drawableEnd"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v5, v8, v9}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "TextView_maxLines"

    .line 1274
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v8, -0x1

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "TextView_drawablePadding"

    const v5, 0x1010171

    .line 1275
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v8, 0x0

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    :try_start_1
    const-string v4, "TextView_textCursorDrawable"

    .line 1278
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "_TextView_textCursorDrawable"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v5, v8, v9}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    :try_start_2
    const-string v4, "TextView_textCursorDrawable"

    .line 1280
    iget-object v5, v1, Lorg/qtproject/qt/android/ExtractStyle;->m_context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    const/4 v10, 0x0

    invoke-virtual {v6, v8, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iget-object v10, v1, Lorg/qtproject/qt/android/ExtractStyle;->m_theme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v5, v8, v10}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "_TextView_textCursorDrawable"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v5, v8, v9}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_1
    const-string v4, "TextView_maxLines"

    .line 1283
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v8, -0x1

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "TextView_maxHeight"

    const v5, 0x1010120

    .line 1284
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "TextView_lines"

    const v5, 0x1010154

    .line 1285
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "TextView_height"

    const v5, 0x1010155

    .line 1286
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "TextView_minLines"

    const v5, 0x1010156

    .line 1287
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "TextView_minHeight"

    const v5, 0x1010140

    .line 1288
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "TextView_maxEms"

    const v5, 0x1010157

    .line 1289
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "TextView_maxWidth"

    const v5, 0x101011f

    .line 1290
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "TextView_ems"

    const v5, 0x1010158

    .line 1291
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "TextView_width"

    const v5, 0x1010159

    .line 1292
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "TextView_minEms"

    const v5, 0x101015a

    .line 1293
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "TextView_minWidth"

    const v5, 0x101013f

    .line 1294
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "TextView_gravity"

    const v5, 0x10100af

    .line 1295
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "TextView_hint"

    const v5, 0x1010150

    .line 1296
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "TextView_text"

    const v5, 0x101014f

    .line 1297
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "TextView_scrollHorizontally"

    const v5, 0x101015b

    .line 1298
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v8, 0x0

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v4, "TextView_singleLine"

    const v5, 0x101015d

    .line 1299
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v4, "TextView_ellipsize"

    const v5, 0x10100ab

    .line 1300
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v8, -0x1

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "TextView_marqueeRepeatLimit"

    const v5, 0x101021d

    .line 1301
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v8, 0x3

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "TextView_includeFontPadding"

    const v5, 0x101015f

    .line 1302
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v8, 0x1

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v4, "TextView_cursorVisible"

    .line 1303
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v4, "TextView_maxLength"

    .line 1304
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v8, -0x1

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "TextView_textScaleX"

    const v5, 0x1010151

    .line 1305
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    float-to-double v10, v5

    invoke-virtual {v3, v4, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v4, "TextView_freezesText"

    const v5, 0x101016c

    .line 1306
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v8, 0x0

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v4, "TextView_shadowColor"

    const v5, 0x1010161

    .line 1307
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "TextView_shadowDx"

    const v5, 0x1010162

    .line 1308
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v8, 0x0

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    float-to-double v10, v5

    invoke-virtual {v3, v4, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v4, "TextView_shadowDy"

    const v5, 0x1010163

    .line 1309
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    float-to-double v10, v5

    invoke-virtual {v3, v4, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v4, "TextView_shadowRadius"

    const v5, 0x1010164

    .line 1310
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    float-to-double v10, v5

    invoke-virtual {v3, v4, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v4, "TextView_enabled"

    const v5, 0x101000e

    .line 1311
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v8, 0x1

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v4, "TextView_password"

    const v5, 0x101015c

    .line 1312
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v8, 0x0

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v4, "TextView_lineSpacingExtra"

    const v5, 0x1010217

    .line 1313
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "TextView_lineSpacingMultiplier"

    const v5, 0x1010218

    .line 1314
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    float-to-double v10, v5

    invoke-virtual {v3, v4, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v4, "TextView_inputType"

    const v5, 0x1010220

    .line 1315
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v8, 0x0

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "TextView_imeOptions"

    const v5, 0x1010264

    .line 1316
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "TextView_imeActionLabel"

    const v5, 0x1010265

    .line 1317
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "TextView_imeActionId"

    const v5, 0x1010266

    .line 1318
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v8, 0x0

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "TextView_privateImeOptions"

    const v5, 0x1010223

    .line 1319
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    :try_start_3
    const-string v4, "TextView_textSelectHandleLeft"

    .line 1322
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "_TextView_textSelectHandleLeft"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v5, v8, v9}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    :try_start_4
    const-string v4, "TextView_textSelectHandleLeft"

    .line 1324
    iget-object v5, v1, Lorg/qtproject/qt/android/ExtractStyle;->m_context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    const/4 v10, 0x0

    invoke-virtual {v6, v8, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iget-object v10, v1, Lorg/qtproject/qt/android/ExtractStyle;->m_theme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v5, v8, v10}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "_TextView_textSelectHandleLeft"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v5, v8, v9}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :goto_2
    :try_start_5
    const-string v4, "TextView_textSelectHandleRight"

    .line 1328
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "_TextView_textSelectHandleRight"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v5, v8, v9}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    :catch_2
    :try_start_6
    const-string v4, "TextView_textSelectHandleRight"

    .line 1330
    iget-object v5, v1, Lorg/qtproject/qt/android/ExtractStyle;->m_context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    const/4 v10, 0x0

    invoke-virtual {v6, v8, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iget-object v10, v1, Lorg/qtproject/qt/android/ExtractStyle;->m_theme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v5, v8, v10}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "_TextView_textSelectHandleRight"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v5, v8, v9}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    :goto_3
    :try_start_7
    const-string v4, "TextView_textSelectHandle"

    .line 1334
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "_TextView_textSelectHandle"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v5, v8, v9}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_4

    :catch_3
    :try_start_8
    const-string v4, "TextView_textSelectHandle"

    .line 1336
    iget-object v5, v1, Lorg/qtproject/qt/android/ExtractStyle;->m_context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    const/4 v10, 0x0

    invoke-virtual {v6, v8, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iget-object v10, v1, Lorg/qtproject/qt/android/ExtractStyle;->m_theme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v5, v8, v10}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "_TextView_textSelectHandle"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v5, v2, v9}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_4
    const-string v2, "TextView_textIsSelectable"

    const v4, 0x1010316

    .line 1338
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v6, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1339
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_5

    :catch_4
    move-exception v0

    move-object v2, v0

    .line 1341
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_5
    return-object v3
.end method

.method public extractTextAppearanceInformation(ILjava/lang/String;Landroid/util/AttributeSet;)Lorg/json/JSONObject;
    .locals 1

    const v0, 0x1010034

    .line 1107
    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/qtproject/qt/android/ExtractStyle;->extractTextAppearanceInformation(ILjava/lang/String;ILandroid/util/AttributeSet;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method extractToolBar(Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;)V
    .locals 12

    const v0, 0x10104aa

    const-string v1, "QToolBar"

    .line 1676
    invoke-virtual {p0, v0, v1}, Lorg/qtproject/qt/android/ExtractStyle;->extractTextAppearanceInformation(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const/4 v2, 0x5

    :try_start_0
    new-array v2, v2, [I

    const v3, 0x10100d4

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v5, 0x1

    const v6, 0x101038a

    aput v6, v2, v5

    const/4 v5, 0x2

    const v7, 0x101038b

    aput v7, v2, v5

    const/4 v5, 0x3

    const v8, 0x1010129

    aput v8, v2, v5

    const/4 v5, 0x4

    const v9, 0x101032d

    aput v9, v2, v5

    .line 1685
    invoke-static {v2}, Ljava/util/Arrays;->sort([I)V

    .line 1686
    invoke-direct {p0, v0, v2}, Lorg/qtproject/qt/android/ExtractStyle;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1687
    invoke-direct {p0, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getArrayListFromIntArray([I)Ljava/util/ArrayList;

    move-result-object v2

    .line 1689
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    const-string v10, "ActionBar_background"

    const-string v11, "16843946_ActionBar_background"

    .line 1691
    invoke-virtual {p0, v3, v11, v5}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v10, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1693
    :cond_0
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v6, "ActionBar_backgroundStacked"

    const-string v10, "16843946_ActionBar_backgroundStacked"

    .line 1695
    invoke-virtual {p0, v3, v10, v5}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1697
    :cond_1
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v6, "ActionBar_backgroundSplit"

    const-string v7, "16843946_ActionBar_backgroundSplit"

    .line 1699
    invoke-virtual {p0, v3, v7, v5}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1701
    :cond_2
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_3

    const-string v6, "ActionBar_divider"

    const-string v7, "16843946_ActionBar_divider"

    .line 1703
    invoke-virtual {p0, v3, v7, v5}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    const-string v3, "ActionBar_itemPadding"

    .line 1705
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1707
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    const-string v0, "actionBarStyle"

    .line 1708
    invoke-virtual {p1, v0}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->name(Ljava/lang/String;)Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->value(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1710
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public extractViewInformation(ILorg/json/JSONObject;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 923
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/qtproject/qt/android/ExtractStyle;->extractViewInformation(ILorg/json/JSONObject;Ljava/lang/String;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public extractViewInformation(ILorg/json/JSONObject;Ljava/lang/String;Landroid/util/AttributeSet;)V
    .locals 28

    move-object/from16 v1, p0

    move/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    .line 928
    :try_start_0
    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    .line 929
    new-instance v6, Landroid/view/ContextThemeWrapper;

    iget-object v7, v1, Lorg/qtproject/qt/android/ExtractStyle;->m_context:Landroid/content/Context;

    iget-object v8, v1, Lorg/qtproject/qt/android/ExtractStyle;->m_theme:Landroid/content/res/Resources$Theme;

    invoke-direct {v6, v7, v8}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V

    .line 930
    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v0, v5, v7}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    const/16 v5, 0x2e

    new-array v5, v5, [I

    const v6, 0x1010166

    const/4 v8, 0x0

    aput v6, v5, v8

    const v9, 0x10100d4

    aput v9, v5, v7

    const/4 v10, 0x2

    const v11, 0x10100d5

    aput v11, v5, v10

    const/4 v10, 0x3

    const v12, 0x10100d6

    aput v12, v5, v10

    const/4 v10, 0x4

    const v13, 0x10100d7

    aput v13, v5, v10

    const/4 v10, 0x5

    const v14, 0x10100d8

    aput v14, v5, v10

    const/4 v10, 0x6

    const v15, 0x10100d9

    aput v15, v5, v10

    const/4 v10, 0x7

    const v16, 0x10100d2

    aput v16, v5, v10

    const/16 v10, 0x8

    const v17, 0x10100d3

    aput v17, v5, v10

    const/16 v10, 0x9

    const v18, 0x10100d0

    aput v18, v5, v10

    const/16 v10, 0xa

    const v19, 0x10100d1

    aput v19, v5, v10

    const/16 v10, 0xb

    const v20, 0x10100dd

    aput v20, v5, v10

    const/16 v10, 0xc

    const v21, 0x10100da

    aput v21, v5, v10

    const/16 v10, 0xd

    const v22, 0x10100db

    aput v22, v5, v10

    const/16 v10, 0xe

    const v23, 0x10100e5

    aput v23, v5, v10

    const/16 v10, 0xf

    const v24, 0x10100e6

    aput v24, v5, v10

    const/16 v10, 0x10

    const v25, 0x10100e7

    aput v25, v5, v10

    const/16 v10, 0x11

    const v26, 0x10100e9

    aput v26, v5, v10

    const/16 v10, 0x12

    const v27, 0x10100dc

    aput v27, v5, v10

    const/16 v10, 0x13

    const v27, 0x10100e8

    aput v27, v5, v10

    const/16 v10, 0x14

    const v27, 0x1010273

    aput v27, v5, v10

    const/16 v10, 0x15

    const v27, 0x1010215

    aput v27, v5, v10

    const/16 v10, 0x16

    const v27, 0x101025e

    aput v27, v5, v10

    const/16 v10, 0x17

    const v27, 0x10100de

    aput v27, v5, v10

    const/16 v10, 0x18

    const v27, 0x10100df

    aput v27, v5, v10

    const/16 v10, 0x19

    const v27, 0x101007f

    aput v27, v5, v10

    const/16 v10, 0x1a

    const v27, 0x10102a8

    aput v27, v5, v10

    const/16 v10, 0x1b

    const v27, 0x10102a9

    aput v27, v5, v10

    const/16 v10, 0x1c

    const v27, 0x1010063

    aput v27, v5, v10

    const/16 v10, 0x1d

    const v27, 0x1010064

    aput v27, v5, v10

    const/16 v10, 0x1e

    const v27, 0x1010065

    aput v27, v5, v10

    const/16 v10, 0x1f

    const v27, 0x1010066

    aput v27, v5, v10

    const/16 v10, 0x20

    const v27, 0x1010067

    aput v27, v5, v10

    const/16 v10, 0x21

    const v27, 0x101024e

    aput v27, v5, v10

    const/16 v10, 0x22

    const v27, 0x1010216

    aput v27, v5, v10

    const/16 v10, 0x23

    const v27, 0x10102c4

    aput v27, v5, v10

    const/16 v10, 0x24

    const v27, 0x10100e1

    aput v27, v5, v10

    const/16 v10, 0x25

    const v27, 0x10100e2

    aput v27, v5, v10

    const/16 v10, 0x26

    const v27, 0x10100e3

    aput v27, v5, v10

    const/16 v10, 0x27

    const v27, 0x10100e4

    aput v27, v5, v10

    const/16 v10, 0x28

    const v27, 0x101013f

    aput v27, v5, v10

    const/16 v10, 0x29

    const v27, 0x1010140

    aput v27, v5, v10

    const/16 v10, 0x2a

    const v27, 0x101026f

    aput v27, v5, v10

    const/16 v10, 0x2b

    const v27, 0x10102c1

    aput v27, v5, v10

    const/16 v10, 0x2c

    const v27, 0x10103b3

    aput v27, v5, v10

    const/16 v10, 0x2d

    const v27, 0x10103b4

    aput v27, v5, v10

    .line 983
    invoke-static {v5}, Ljava/util/Arrays;->sort([I)V

    if-eqz v4, :cond_0

    .line 986
    iget-object v10, v1, Lorg/qtproject/qt/android/ExtractStyle;->m_theme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v10, v4, v5, v0, v8}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    goto :goto_0

    .line 988
    :cond_0
    invoke-direct {v1, v0, v5}, Lorg/qtproject/qt/android/ExtractStyle;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 989
    :goto_0
    invoke-direct {v1, v5}, Lorg/qtproject/qt/android/ExtractStyle;->getArrayListFromIntArray([I)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v3, :cond_1

    const-string v10, "qtClass"

    .line 992
    invoke-virtual {v2, v10, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    const-string v3, "defaultBackgroundColor"

    .line 994
    iget v10, v1, Lorg/qtproject/qt/android/ExtractStyle;->defaultBackgroundColor:I

    invoke-virtual {v2, v3, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "defaultTextColorPrimary"

    .line 995
    iget v10, v1, Lorg/qtproject/qt/android/ExtractStyle;->defaultTextColor:I

    invoke-virtual {v2, v3, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "TextView_digits"

    .line 996
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "View_background"

    .line 997
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "_View_background"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v1, v6, v9, v10}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "View_padding"

    .line 998
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    const/4 v9, -0x1

    invoke-virtual {v4, v6, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "View_paddingLeft"

    .line 999
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v6, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "View_paddingTop"

    .line 1000
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v6, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "View_paddingRight"

    .line 1001
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v6, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "View_paddingBottom"

    .line 1002
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v6, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "View_paddingBottom"

    .line 1003
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v6, v8}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "View_scrollY"

    .line 1004
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v6, v8}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "View_id"

    .line 1005
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v6, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "View_tag"

    .line 1006
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "View_fitsSystemWindows"

    .line 1007
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v6, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v3, "View_focusable"

    .line 1008
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v6, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v3, "View_focusableInTouchMode"

    .line 1009
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v6, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v3, "View_clickable"

    .line 1010
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v6, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v3, "View_longClickable"

    .line 1011
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v6, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v3, "View_saveEnabled"

    .line 1012
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v3, "View_duplicateParentState"

    .line 1013
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v6, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v3, "View_visibility"

    const v6, 0x10100dc

    .line 1014
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v6, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "View_drawingCacheQuality"

    const v6, 0x10100e8

    .line 1015
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v6, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "View_contentDescription"

    const v6, 0x1010273

    .line 1016
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "View_soundEffectsEnabled"

    const v6, 0x1010215

    .line 1017
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v3, "View_hapticFeedbackEnabled"

    const v6, 0x101025e

    .line 1018
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v3, "View_scrollbars"

    const v6, 0x10100de

    .line 1019
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v6, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "View_fadingEdge"

    const v6, 0x10100df

    .line 1020
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v6, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "View_scrollbarStyle"

    const v6, 0x101007f

    .line 1021
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v6, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "View_scrollbarFadeDuration"

    const v6, 0x10102a8

    .line 1022
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v6, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "View_scrollbarDefaultDelayBeforeFade"

    const v6, 0x10102a9

    .line 1023
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v6, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "View_scrollbarSize"

    const v6, 0x1010063

    .line 1024
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v6, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "View_scrollbarThumbHorizontal"

    const v6, 0x1010064

    .line 1025
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "_View_scrollbarThumbHorizontal"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v6, v11, v10}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "View_scrollbarThumbVertical"

    const v6, 0x1010065

    .line 1026
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "_View_scrollbarThumbVertical"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v6, v11, v10}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "View_scrollbarTrackHorizontal"

    const v6, 0x1010066

    .line 1027
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "_View_scrollbarTrackHorizontal"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v6, v11, v10}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "View_scrollbarTrackVertical"

    const v6, 0x1010067

    .line 1028
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "_View_scrollbarTrackVertical"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v6, v0, v10}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "View_isScrollContainer"

    const v3, 0x101024e

    .line 1029
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v4, v3, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "View_keepScreenOn"

    const v3, 0x1010216

    .line 1030
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v4, v3, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "View_filterTouchesWhenObscured"

    const v3, 0x10102c4

    .line 1031
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v4, v3, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "View_nextFocusLeft"

    const v3, 0x10100e1

    .line 1032
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v4, v3, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "View_nextFocusRight"

    const v3, 0x10100e2

    .line 1033
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v4, v3, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "View_nextFocusUp"

    const v3, 0x10100e3

    .line 1034
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v4, v3, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "View_nextFocusDown"

    const v3, 0x10100e4

    .line 1035
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v4, v3, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "View_minWidth"

    const v3, 0x101013f

    .line 1036
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v4, v3, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "View_minHeight"

    const v3, 0x1010140

    .line 1037
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v4, v3, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "View_onClick"

    const v3, 0x101026f

    .line 1038
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "View_overScrollMode"

    const v3, 0x10102c1

    .line 1039
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v4, v3, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "View_paddingStart"

    const v3, 0x10103b3

    .line 1040
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v4, v3, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "View_paddingEnd"

    const v3, 0x10103b4

    .line 1041
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v4, v3, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1042
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 1044
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 265
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 p2, 0x1

    .line 266
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 269
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method getColorStateList(Landroid/content/res/ColorStateList;)Lorg/json/JSONObject;
    .locals 4

    .line 293
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "EMPTY_STATE_SET"

    .line 295
    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->EMPTY_STATE_SET:[I

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "WINDOW_FOCUSED_STATE_SET"

    .line 296
    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->WINDOW_FOCUSED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "SELECTED_STATE_SET"

    .line 297
    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->SELECTED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "SELECTED_WINDOW_FOCUSED_STATE_SET"

    .line 298
    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "FOCUSED_STATE_SET"

    .line 299
    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->FOCUSED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "FOCUSED_WINDOW_FOCUSED_STATE_SET"

    .line 300
    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "FOCUSED_SELECTED_STATE_SET"

    .line 301
    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->FOCUSED_SELECTED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET"

    .line 302
    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "ENABLED_STATE_SET"

    .line 303
    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->ENABLED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "ENABLED_WINDOW_FOCUSED_STATE_SET"

    .line 304
    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->ENABLED_WINDOW_FOCUSED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "ENABLED_SELECTED_STATE_SET"

    .line 305
    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->ENABLED_SELECTED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET"

    .line 306
    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "ENABLED_FOCUSED_STATE_SET"

    .line 307
    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->ENABLED_FOCUSED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET"

    .line 308
    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "ENABLED_FOCUSED_SELECTED_STATE_SET"

    .line 309
    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->ENABLED_FOCUSED_SELECTED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET"

    .line 310
    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "PRESSED_STATE_SET"

    .line 311
    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "PRESSED_WINDOW_FOCUSED_STATE_SET"

    .line 312
    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_WINDOW_FOCUSED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "PRESSED_SELECTED_STATE_SET"

    .line 313
    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_SELECTED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "PRESSED_SELECTED_WINDOW_FOCUSED_STATE_SET"

    .line 314
    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "PRESSED_FOCUSED_STATE_SET"

    .line 315
    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_FOCUSED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "PRESSED_FOCUSED_WINDOW_FOCUSED_STATE_SET"

    .line 316
    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "PRESSED_FOCUSED_SELECTED_STATE_SET"

    .line 317
    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_FOCUSED_SELECTED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "PRESSED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET"

    .line 318
    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "PRESSED_ENABLED_STATE_SET"

    .line 319
    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_ENABLED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "PRESSED_ENABLED_WINDOW_FOCUSED_STATE_SET"

    .line 320
    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_ENABLED_WINDOW_FOCUSED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "PRESSED_ENABLED_SELECTED_STATE_SET"

    .line 321
    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_ENABLED_SELECTED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "PRESSED_ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET"

    .line 322
    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "PRESSED_ENABLED_FOCUSED_STATE_SET"

    .line 323
    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_ENABLED_FOCUSED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "PRESSED_ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET"

    .line 324
    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "PRESSED_ENABLED_FOCUSED_SELECTED_STATE_SET"

    .line 325
    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_ENABLED_FOCUSED_SELECTED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "PRESSED_ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET"

    .line 326
    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 328
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;
    .locals 12

    const-string v0, "color"

    const/4 v1, 0x0

    if-eqz p1, :cond_1e

    .line 742
    iget-boolean v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->m_minimal:Z

    if-eqz v2, :cond_0

    goto/16 :goto_7

    .line 745
    :cond_0
    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->m_drawableCache:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/qtproject/qt/android/ExtractStyle$DrawableCache;

    if-eqz v2, :cond_2

    .line 747
    iget-object v3, v2, Lorg/qtproject/qt/android/ExtractStyle$DrawableCache;->drawable:Ljava/lang/Object;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 748
    iget-object p1, v2, Lorg/qtproject/qt/android/ExtractStyle$DrawableCache;->object:Lorg/json/JSONObject;

    return-object p1

    .line 750
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Different drawable objects points to the same file name \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Qt JAVA"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    :cond_2
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 754
    instance-of v3, p1, Landroid/graphics/Bitmap;

    const/16 v4, 0x64

    const-string v5, "type"

    if-eqz v3, :cond_3

    .line 755
    move-object v1, p1

    check-cast v1, Landroid/graphics/Bitmap;

    goto/16 :goto_4

    .line 757
    :cond_3
    instance-of v3, p1, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v6, 0x0

    if-eqz v3, :cond_4

    .line 758
    move-object p3, p1

    check-cast p3, Landroid/graphics/drawable/BitmapDrawable;

    .line 759
    invoke-virtual {p3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    :try_start_0
    const-string v0, "gravity"

    .line 761
    invoke-virtual {p3}, Landroid/graphics/drawable/BitmapDrawable;->getGravity()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "tileModeX"

    .line 762
    invoke-virtual {p3}, Landroid/graphics/drawable/BitmapDrawable;->getTileModeX()Landroid/graphics/Shader$TileMode;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "tileModeY"

    .line 763
    invoke-virtual {p3}, Landroid/graphics/drawable/BitmapDrawable;->getTileModeY()Landroid/graphics/Shader$TileMode;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "antialias"

    .line 764
    const-class v3, Landroid/graphics/drawable/BitmapDrawable;

    const-string v7, "hasAntiAlias"

    new-array v8, v6, [Ljava/lang/Class;

    invoke-virtual {v3, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v7, v6, [Ljava/lang/Object;

    invoke-virtual {v3, p3, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "mipMap"

    .line 765
    const-class v3, Landroid/graphics/drawable/BitmapDrawable;

    const-string v7, "hasMipMap"

    new-array v8, v6, [Ljava/lang/Class;

    invoke-virtual {v3, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v7, v6, [Ljava/lang/Object;

    invoke-virtual {v3, p3, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "tintMode"

    .line 766
    const-class v3, Landroid/graphics/drawable/BitmapDrawable;

    const-string v7, "getTintMode"

    new-array v8, v6, [Ljava/lang/Class;

    invoke-virtual {v3, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v7, v6, [Ljava/lang/Object;

    invoke-virtual {v3, p3, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 767
    const-class v0, Landroid/graphics/drawable/BitmapDrawable;

    const-string v3, "getTint"

    new-array v7, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0, p3, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/res/ColorStateList;

    if-eqz p3, :cond_1b

    const-string v0, "tintList"

    .line 769
    invoke-virtual {p0, p3}, Lorg/qtproject/qt/android/ExtractStyle;->getColorStateList(Landroid/content/res/ColorStateList;)Lorg/json/JSONObject;

    move-result-object p3

    invoke-virtual {v2, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    :catch_0
    move-exception p3

    .line 771
    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    .line 775
    :cond_4
    instance-of v3, p1, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v3, :cond_5

    .line 776
    invoke-direct {p0, p1, p2, p3}, Lorg/qtproject/qt/android/ExtractStyle;->getRippleDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    .line 778
    :cond_5
    instance-of v3, p1, Landroid/graphics/drawable/AnimatedStateListDrawable;

    if-eqz v3, :cond_6

    .line 779
    invoke-direct {p0, p1, p2}, Lorg/qtproject/qt/android/ExtractStyle;->getAnimatedStateListDrawable(Ljava/lang/Object;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    .line 781
    :cond_6
    instance-of v3, p1, Landroid/graphics/drawable/VectorDrawable;

    if-eqz v3, :cond_7

    .line 782
    invoke-direct {p0, p1}, Lorg/qtproject/qt/android/ExtractStyle;->getVectorDrawable(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    .line 784
    :cond_7
    instance-of v3, p1, Landroid/graphics/drawable/ScaleDrawable;

    if-eqz v3, :cond_8

    .line 785
    check-cast p1, Landroid/graphics/drawable/ScaleDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/ScaleDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    .line 787
    :cond_8
    instance-of v3, p1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v3, :cond_9

    .line 788
    invoke-direct {p0, p1, p2}, Lorg/qtproject/qt/android/ExtractStyle;->getLayerDrawable(Ljava/lang/Object;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    .line 790
    :cond_9
    instance-of v3, p1, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v3, :cond_a

    .line 791
    invoke-direct {p0, p1, p2}, Lorg/qtproject/qt/android/ExtractStyle;->getStateListDrawable(Ljava/lang/Object;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    .line 793
    :cond_a
    instance-of v3, p1, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v3, :cond_b

    .line 794
    check-cast p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p0, p1}, Lorg/qtproject/qt/android/ExtractStyle;->getGradientDrawable(Landroid/graphics/drawable/GradientDrawable;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    .line 796
    :cond_b
    instance-of v3, p1, Landroid/graphics/drawable/RotateDrawable;

    if-eqz v3, :cond_c

    .line 797
    check-cast p1, Landroid/graphics/drawable/RotateDrawable;

    invoke-direct {p0, p1, p2}, Lorg/qtproject/qt/android/ExtractStyle;->getRotateDrawable(Landroid/graphics/drawable/RotateDrawable;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    .line 799
    :cond_c
    instance-of v3, p1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v3, :cond_d

    .line 800
    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {p0, p1, p2}, Lorg/qtproject/qt/android/ExtractStyle;->getAnimationDrawable(Landroid/graphics/drawable/AnimationDrawable;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    .line 802
    :cond_d
    instance-of v3, p1, Landroid/graphics/drawable/ClipDrawable;

    const-string v7, "mDrawable"

    const-string v8, "drawable"

    const-string v9, "padding"

    if-eqz v3, :cond_10

    :try_start_1
    const-string v0, "clipDrawable"

    .line 804
    invoke-virtual {v2, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 805
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/ClipDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ClipDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    .line 806
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0, v3, v7}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p2, v1}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {v2, v8, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p3, :cond_e

    .line 808
    invoke-direct {p0, p3}, Lorg/qtproject/qt/android/ExtractStyle;->getJsonRect(Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v2, v9, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 810
    :cond_e
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 811
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 812
    invoke-direct {p0, p2}, Lorg/qtproject/qt/android/ExtractStyle;->getJsonRect(Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v2, v9, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 815
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_f
    :goto_0
    return-object v2

    .line 819
    :cond_10
    instance-of v3, p1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v10, 0x1

    if-eqz v3, :cond_13

    .line 820
    sget-object p2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v10, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 821
    check-cast p1, Landroid/graphics/drawable/Drawable;

    .line 822
    invoke-virtual {p1, v6, v6, v10, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 823
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 825
    :try_start_2
    invoke-virtual {v2, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 826
    invoke-virtual {p2, v6, v6}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result p2

    invoke-virtual {v2, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    if-eqz p3, :cond_11

    .line 828
    invoke-direct {p0, p3}, Lorg/qtproject/qt/android/ExtractStyle;->getJsonRect(Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v2, v9, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 830
    :cond_11
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 831
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 832
    invoke-direct {p0, p2}, Lorg/qtproject/qt/android/ExtractStyle;->getJsonRect(Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v2, v9, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception p1

    .line 835
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_12
    :goto_1
    return-object v2

    .line 839
    :cond_13
    instance-of v0, p1, Landroid/graphics/drawable/InsetDrawable;

    if-eqz v0, :cond_15

    .line 841
    :try_start_3
    move-object p3, p1

    check-cast p3, Landroid/graphics/drawable/InsetDrawable;

    .line 842
    const-class v0, Landroid/graphics/drawable/InsetDrawable;

    const-string v3, "mState"

    invoke-virtual {p0, v0, v3}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 843
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 844
    invoke-virtual {p3, v3}, Landroid/graphics/drawable/InsetDrawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result p3

    .line 845
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {p0, v6, v7}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz p3, :cond_14

    goto :goto_2

    :cond_14
    move-object v3, v1

    :goto_2
    invoke-virtual {p0, v0, p2, v3}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    return-object p1

    :catch_3
    move-exception p3

    .line 847
    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 850
    :cond_15
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 851
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 852
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    const/16 v11, 0x2710

    .line 853
    invoke-virtual {v0, v11}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    if-lt v3, v10, :cond_16

    if-ge v7, v10, :cond_17

    :cond_16
    move v3, v4

    move v7, v3

    .line 858
    :cond_17
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v7, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 859
    invoke-virtual {v0, v6, v6, v3, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 860
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 861
    instance-of v3, p1, Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v3, :cond_1a

    .line 862
    move-object v3, p1

    check-cast v3, Landroid/graphics/drawable/NinePatchDrawable;

    :try_start_4
    const-string v6, "9patch"

    .line 864
    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 865
    invoke-virtual {p0, v10, p2, v1}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v2, v8, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p3, :cond_18

    .line 867
    invoke-direct {p0, p3}, Lorg/qtproject/qt/android/ExtractStyle;->getJsonRect(Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object p3

    invoke-virtual {v2, v9, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    .line 869
    :cond_18
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    .line 870
    invoke-virtual {v3, p3}, Landroid/graphics/drawable/NinePatchDrawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 871
    invoke-direct {p0, p3}, Lorg/qtproject/qt/android/ExtractStyle;->getJsonRect(Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object p3

    invoke-virtual {v2, v9, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_19
    :goto_3
    const-string p3, "chunkInfo"

    .line 874
    invoke-direct {p0, v0}, Lorg/qtproject/qt/android/ExtractStyle;->findPatchesMarings(Landroid/graphics/drawable/Drawable;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, p3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    return-object v2

    :catch_4
    move-exception p3

    .line 877
    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1a
    move-object v1, v10

    .line 885
    :cond_1b
    :goto_4
    :try_start_5
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lorg/qtproject/qt/android/ExtractStyle;->m_extractPath:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".png"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 886
    new-instance p3, Ljava/io/FileOutputStream;

    invoke-direct {p3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_1c

    .line 888
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v1, v0, v4, p3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 889
    :cond_1c
    invoke-virtual {p3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception p3

    .line 891
    invoke-virtual {p3}, Ljava/io/IOException;->printStackTrace()V

    :goto_5
    :try_start_6
    const-string p3, "image"

    .line 894
    invoke-virtual {v2, v5, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "path"

    .line 895
    invoke-virtual {v2, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz v1, :cond_1d

    const-string p3, "width"

    .line 897
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v2, p3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p3, "height"

    .line 898
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {v2, p3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 900
    :cond_1d
    iget-object p3, p0, Lorg/qtproject/qt/android/ExtractStyle;->m_drawableCache:Ljava/util/HashMap;

    new-instance v0, Lorg/qtproject/qt/android/ExtractStyle$DrawableCache;

    invoke-direct {v0, v2, p1}, Lorg/qtproject/qt/android/ExtractStyle$DrawableCache;-><init>(Lorg/json/JSONObject;Ljava/lang/Object;)V

    invoke-virtual {p3, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    :catch_6
    move-exception p1

    .line 902
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_6
    return-object v2

    :cond_1e
    :goto_7
    return-object v1
.end method

.method getStatesList([I)Lorg/json/JSONObject;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 335
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 336
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_5

    aget v4, p1, v3

    move v5, v2

    .line 338
    :goto_1
    iget-object v6, p0, Lorg/qtproject/qt/android/ExtractStyle;->DrawableStates:[I

    array-length v7, v6

    const/4 v8, 0x1

    if-ge v5, v7, :cond_2

    .line 339
    aget v7, v6, v5

    if-ne v4, v7, :cond_0

    .line 340
    iget-object v6, p0, Lorg/qtproject/qt/android/ExtractStyle;->DrawableStatesLabels:[Ljava/lang/String;

    aget-object v5, v6, v5

    invoke-virtual {v0, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :goto_2
    move v5, v8

    goto :goto_3

    .line 343
    :cond_0
    aget v6, v6, v5

    neg-int v6, v6

    if-ne v4, v6, :cond_1

    .line 344
    iget-object v6, p0, Lorg/qtproject/qt/android/ExtractStyle;->DrawableStatesLabels:[Ljava/lang/String;

    aget-object v5, v6, v5

    invoke-virtual {v0, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    move v5, v2

    :goto_3
    if-nez v5, :cond_4

    .line 351
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unhandled_state_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    if-lez v4, :cond_3

    goto :goto_4

    :cond_3
    move v8, v2

    :goto_4
    invoke-virtual {v0, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method getStatesName([I)Ljava/lang/String;
    .locals 10

    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 359
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_7

    aget v4, p1, v3

    move v5, v2

    .line 361
    :goto_1
    iget-object v6, p0, Lorg/qtproject/qt/android/ExtractStyle;->DrawableStates:[I

    array-length v7, v6

    const/4 v8, 0x1

    if-ge v5, v7, :cond_4

    .line 362
    aget v7, v6, v5

    const-string v9, "__"

    if-ne v4, v7, :cond_1

    .line 363
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 364
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    :cond_0
    iget-object v6, p0, Lorg/qtproject/qt/android/ExtractStyle;->DrawableStatesLabels:[Ljava/lang/String;

    aget-object v5, v6, v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 368
    :cond_1
    aget v6, v6, v5

    neg-int v6, v6

    if-ne v4, v6, :cond_3

    .line 369
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 370
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    :cond_2
    iget-object v6, p0, Lorg/qtproject/qt/android/ExtractStyle;->DisableDrawableStatesLabels:[Ljava/lang/String;

    aget-object v5, v6, v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    move v8, v2

    :goto_2
    if-nez v8, :cond_6

    .line 377
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_5

    const-string v5, ";"

    .line 378
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    :cond_5
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 382
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_8

    .line 383
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_8
    const-string p1, "empty"

    return-object p1
.end method

.method tryGetAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 279
    :cond_0
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 280
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 283
    :catch_0
    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 284
    invoke-virtual {p0, v3, p2}, Lorg/qtproject/qt/android/ExtractStyle;->tryGetAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    if-eqz v3, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 289
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/qtproject/qt/android/ExtractStyle;->tryGetAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    return-object p1
.end method
