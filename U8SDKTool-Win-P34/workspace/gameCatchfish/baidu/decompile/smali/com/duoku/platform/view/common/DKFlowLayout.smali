.class public Lcom/duoku/platform/view/common/DKFlowLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoku/platform/view/common/DKFlowLayout$LayoutParams;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:I

.field private c:I

.field private d:I

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/duoku/platform/view/common/DKFlowLayout;->a:Landroid/content/Context;

    .line 36
    iput v1, p0, Lcom/duoku/platform/view/common/DKFlowLayout;->b:I

    .line 37
    iput v1, p0, Lcom/duoku/platform/view/common/DKFlowLayout;->c:I

    .line 38
    iput v1, p0, Lcom/duoku/platform/view/common/DKFlowLayout;->d:I

    .line 39
    iput-boolean v1, p0, Lcom/duoku/platform/view/common/DKFlowLayout;->e:Z

    .line 49
    iput-object p1, p0, Lcom/duoku/platform/view/common/DKFlowLayout;->a:Landroid/content/Context;

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/duoku/platform/view/common/DKFlowLayout;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/duoku/platform/view/common/DKFlowLayout;->a:Landroid/content/Context;

    .line 36
    iput v1, p0, Lcom/duoku/platform/view/common/DKFlowLayout;->b:I

    .line 37
    iput v1, p0, Lcom/duoku/platform/view/common/DKFlowLayout;->c:I

    .line 38
    iput v1, p0, Lcom/duoku/platform/view/common/DKFlowLayout;->d:I

    .line 39
    iput-boolean v1, p0, Lcom/duoku/platform/view/common/DKFlowLayout;->e:Z

    .line 55
    iput-object p1, p0, Lcom/duoku/platform/view/common/DKFlowLayout;->a:Landroid/content/Context;

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/duoku/platform/view/common/DKFlowLayout;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    return-void
.end method

.method private a(Lcom/duoku/platform/view/common/DKFlowLayout$LayoutParams;)I
    .registers 3

    .prologue
    .line 172
    invoke-virtual {p1}, Lcom/duoku/platform/view/common/DKFlowLayout$LayoutParams;->b()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 173
    invoke-static {p1}, Lcom/duoku/platform/view/common/DKFlowLayout$LayoutParams;->b(Lcom/duoku/platform/view/common/DKFlowLayout$LayoutParams;)I

    move-result v0

    .line 178
    :goto_a
    return v0

    .line 175
    :cond_b
    iget v0, p0, Lcom/duoku/platform/view/common/DKFlowLayout;->c:I

    goto :goto_a
.end method

.method private a(I)Landroid/graphics/Paint;
    .registers 4

    .prologue
    .line 313
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 314
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 315
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 316
    const/high16 v1, 0x40000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 318
    return-object v0
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 238
    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 239
    const-string v1, "horizontalSpacing"

    invoke-static {p1, v1}, Lcom/duoku/platform/util/m;->h(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "verticalSpacing"

    invoke-static {p1, v2}, Lcom/duoku/platform/util/m;->h(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 240
    const-string v2, "orientation"

    invoke-static {p1, v2}, Lcom/duoku/platform/util/m;->h(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "debugDraw"

    invoke-static {p1, v2}, Lcom/duoku/platform/util/m;->h(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    .line 242
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 249
    :try_start_2b
    const-string v0, "DKFlowLayout_horizontalSpacing"

    invoke-static {p1, v0}, Lcom/duoku/platform/util/m;->i(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 250
    const/high16 v2, 0x41000000

    invoke-static {p1, v2}, Lcom/duoku/platform/ui/b/b;->a(Landroid/content/Context;F)I

    move-result v2

    .line 249
    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/duoku/platform/view/common/DKFlowLayout;->b:I

    .line 251
    const-string v0, "DKFlowLayout_verticalSpacing"

    invoke-static {p1, v0}, Lcom/duoku/platform/util/m;->i(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 252
    const/high16 v2, 0x41000000

    invoke-static {p1, v2}, Lcom/duoku/platform/ui/b/b;->a(Landroid/content/Context;F)I

    move-result v2

    .line 251
    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/duoku/platform/view/common/DKFlowLayout;->c:I

    .line 253
    const-string v0, "DKFlowLayout_orientation"

    invoke-static {p1, v0}, Lcom/duoku/platform/util/m;->i(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/duoku/platform/view/common/DKFlowLayout;->d:I

    .line 254
    const-string v0, "DKFlowLayout_debugDraw"

    invoke-static {p1, v0}, Lcom/duoku/platform/util/m;->i(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/duoku/platform/view/common/DKFlowLayout;->e:Z
    :try_end_69
    .catchall {:try_start_2b .. :try_end_69} :catchall_6d

    .line 256
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 258
    return-void

    .line 255
    :catchall_6d
    move-exception v0

    .line 256
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 257
    throw v0
.end method

.method private a(Landroid/graphics/Canvas;Landroid/view/View;)V
    .registers 21

    .prologue
    .line 261
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/duoku/platform/view/common/DKFlowLayout;->e:Z

    if-nez v1, :cond_7

    .line 310
    :cond_6
    :goto_6
    return-void

    .line 265
    :cond_7
    const/16 v1, -0x100

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/duoku/platform/view/common/DKFlowLayout;->a(I)Landroid/graphics/Paint;

    move-result-object v6

    .line 266
    const v1, -0xff0100

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/duoku/platform/view/common/DKFlowLayout;->a(I)Landroid/graphics/Paint;

    move-result-object v15

    .line 267
    const/high16 v1, -0x10000

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/duoku/platform/view/common/DKFlowLayout;->a(I)Landroid/graphics/Paint;

    move-result-object v17

    .line 269
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Lcom/duoku/platform/view/common/DKFlowLayout$LayoutParams;

    .line 271
    invoke-static/range {v16 .. v16}, Lcom/duoku/platform/view/common/DKFlowLayout$LayoutParams;->c(Lcom/duoku/platform/view/common/DKFlowLayout$LayoutParams;)I

    move-result v1

    if-lez v1, :cond_115

    .line 272
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v2, v1

    .line 273
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000

    div-float/2addr v3, v4

    add-float/2addr v3, v1

    .line 274
    invoke-static/range {v16 .. v16}, Lcom/duoku/platform/view/common/DKFlowLayout$LayoutParams;->c(Lcom/duoku/platform/view/common/DKFlowLayout$LayoutParams;)I

    move-result v1

    int-to-float v1, v1

    add-float v4, v2, v1

    move-object/from16 v1, p1

    move v5, v3

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 275
    invoke-static/range {v16 .. v16}, Lcom/duoku/platform/view/common/DKFlowLayout$LayoutParams;->c(Lcom/duoku/platform/view/common/DKFlowLayout$LayoutParams;)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v2

    const/high16 v4, 0x40800000

    sub-float v8, v1, v4

    const/high16 v1, 0x40800000

    sub-float v9, v3, v1

    invoke-static/range {v16 .. v16}, Lcom/duoku/platform/view/common/DKFlowLayout$LayoutParams;->c(Lcom/duoku/platform/view/common/DKFlowLayout$LayoutParams;)I

    move-result v1

    int-to-float v1, v1

    add-float v10, v2, v1

    move-object/from16 v7, p1

    move v11, v3

    move-object v12, v6

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 276
    invoke-static/range {v16 .. v16}, Lcom/duoku/platform/view/common/DKFlowLayout$LayoutParams;->c(Lcom/duoku/platform/view/common/DKFlowLayout$LayoutParams;)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v2

    const/high16 v4, 0x40800000

    sub-float v8, v1, v4

    const/high16 v1, 0x40800000

    add-float v9, v3, v1

    invoke-static/range {v16 .. v16}, Lcom/duoku/platform/view/common/DKFlowLayout$LayoutParams;->c(Lcom/duoku/platform/view/common/DKFlowLayout$LayoutParams;)I

    move-result v1

    int-to-float v1, v1

    add-float v10, v2, v1

    move-object/from16 v7, p1

    move v11, v3

    move-object v12, v6

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 285
    :cond_86
    :goto_86
    invoke-static/range {v16 .. v16}, Lcom/duoku/platform/view/common/DKFlowLayout$LayoutParams;->b(Lcom/duoku/platform/view/common/DKFlowLayout$LayoutParams;)I

    move-result v1

    if-lez v1, :cond_175

    .line 286
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000

    div-float/2addr v2, v3

    add-float/2addr v2, v1

    .line 287
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v1

    int-to-float v3, v1

    .line 288
    invoke-static/range {v16 .. v16}, Lcom/duoku/platform/view/common/DKFlowLayout$LayoutParams;->b(Lcom/duoku/platform/view/common/DKFlowLayout$LayoutParams;)I

    move-result v1

    int-to-float v1, v1

    add-float v5, v3, v1

    move-object/from16 v1, p1

    move v4, v2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 289
    const/high16 v1, 0x40800000

    sub-float v8, v2, v1

    invoke-static/range {v16 .. v16}, Lcom/duoku/platform/view/common/DKFlowLayout$LayoutParams;->b(Lcom/duoku/platform/view/common/DKFlowLayout$LayoutParams;)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v3

    const/high16 v4, 0x40800000

    sub-float v9, v1, v4

    invoke-static/range {v16 .. v16}, Lcom/duoku/platform/view/common/DKFlowLayout$LayoutParams;->b(Lcom/duoku/platform/view/common/DKFlowLayout$LayoutParams;)I

    move-result v1

    int-to-float v1, v1

    add-float v11, v3, v1

    move-object/from16 v7, p1

    move v10, v2

    move-object v12, v6

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 290
    const/high16 v1, 0x40800000

    add-float v8, v2, v1

    invoke-static/range {v16 .. v16}, Lcom/duoku/platform/view/common/DKFlowLayout$LayoutParams;->b(Lcom/duoku/platform/view/common/DKFlowLayout$LayoutParams;)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v3

    const/high16 v4, 0x40800000

    sub-float v9, v1, v4

    invoke-static/range {v16 .. v16}, Lcom/duoku/platform/view/common/DKFlowLayout$LayoutParams;->b(Lcom/duoku/platform/view/common/DKFlowLayout$LayoutParams;)I

    move-result v1

    int-to-float v1, v1

    add-float v11, v3, v1

    move-object/from16 v7, p1

    move v10, v2

    move-object v12, v6

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 299
    :cond_e4
    :goto_e4
    invoke-static/range {v16 .. v16}, Lcom/duoku/platform/view/common/DKFlowLayout$LayoutParams;->a(Lcom/duoku/platform/view/common/DKFlowLayout$LayoutParams;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 300
    move-object/from16 v0, p0

    iget v1, v0, Lcom/duoku/platform/view/common/DKFlowLayout;->d:I

    if-nez v1, :cond_1d4

    .line 301
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v2, v1

    .line 302
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000

    div-float/2addr v3, v4

    add-float/2addr v1, v3

    .line 303
    const/high16 v3, 0x40c00000

    sub-float v3, v1, v3

    const/high16 v4, 0x40c00000

    add-float v5, v1, v4

    move-object/from16 v1, p1

    move v4, v2

    move-object/from16 v6, v17

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_6

    .line 277
    :cond_115
    move-object/from16 v0, p0

    iget v1, v0, Lcom/duoku/platform/view/common/DKFlowLayout;->b:I

    if-lez v1, :cond_86

    .line 278
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v8, v1

    .line 279
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000

    div-float/2addr v2, v3

    add-float v9, v1, v2

    .line 280
    move-object/from16 v0, p0

    iget v1, v0, Lcom/duoku/platform/view/common/DKFlowLayout;->b:I

    int-to-float v1, v1

    add-float v10, v8, v1

    move-object/from16 v7, p1

    move v11, v9

    move-object v12, v15

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 281
    move-object/from16 v0, p0

    iget v1, v0, Lcom/duoku/platform/view/common/DKFlowLayout;->b:I

    int-to-float v1, v1

    add-float/2addr v1, v8

    const/high16 v2, 0x40800000

    sub-float v11, v1, v2

    const/high16 v1, 0x40800000

    sub-float v12, v9, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/duoku/platform/view/common/DKFlowLayout;->b:I

    int-to-float v1, v1

    add-float v13, v8, v1

    move-object/from16 v10, p1

    move v14, v9

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 282
    move-object/from16 v0, p0

    iget v1, v0, Lcom/duoku/platform/view/common/DKFlowLayout;->b:I

    int-to-float v1, v1

    add-float/2addr v1, v8

    const/high16 v2, 0x40800000

    sub-float v11, v1, v2

    const/high16 v1, 0x40800000

    add-float v12, v9, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/duoku/platform/view/common/DKFlowLayout;->b:I

    int-to-float v1, v1

    add-float v13, v8, v1

    move-object/from16 v10, p1

    move v14, v9

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_86

    .line 291
    :cond_175
    move-object/from16 v0, p0

    iget v1, v0, Lcom/duoku/platform/view/common/DKFlowLayout;->c:I

    if-lez v1, :cond_e4

    .line 292
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000

    div-float/2addr v2, v3

    add-float v11, v1, v2

    .line 293
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v1

    int-to-float v12, v1

    .line 294
    move-object/from16 v0, p0

    iget v1, v0, Lcom/duoku/platform/view/common/DKFlowLayout;->c:I

    int-to-float v1, v1

    add-float v14, v12, v1

    move-object/from16 v10, p1

    move v13, v11

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 295
    const/high16 v1, 0x40800000

    sub-float v2, v11, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/duoku/platform/view/common/DKFlowLayout;->c:I

    int-to-float v1, v1

    add-float/2addr v1, v12

    const/high16 v3, 0x40800000

    sub-float v3, v1, v3

    move-object/from16 v0, p0

    iget v1, v0, Lcom/duoku/platform/view/common/DKFlowLayout;->c:I

    int-to-float v1, v1

    add-float v5, v12, v1

    move-object/from16 v1, p1

    move v4, v11

    move-object v6, v15

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 296
    const/high16 v1, 0x40800000

    add-float v9, v11, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/duoku/platform/view/common/DKFlowLayout;->c:I

    int-to-float v1, v1

    add-float/2addr v1, v12

    const/high16 v2, 0x40800000

    sub-float v10, v1, v2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/duoku/platform/view/common/DKFlowLayout;->c:I

    int-to-float v1, v1

    add-float/2addr v12, v1

    move-object/from16 v8, p1

    move-object v13, v15

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_e4

    .line 305
    :cond_1d4
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 306
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v3, v2

    .line 307
    const/high16 v2, 0x40c00000

    sub-float v2, v1, v2

    const/high16 v4, 0x40c00000

    add-float/2addr v4, v1

    move-object/from16 v1, p1

    move v5, v3

    move-object/from16 v6, v17

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_6
.end method

.method private b(Lcom/duoku/platform/view/common/DKFlowLayout$LayoutParams;)I
    .registers 3

    .prologue
    .line 184
    invoke-virtual {p1}, Lcom/duoku/platform/view/common/DKFlowLayout$LayoutParams;->a()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 185
    invoke-static {p1}, Lcom/duoku/platform/view/common/DKFlowLayout$LayoutParams;->c(Lcom/duoku/platform/view/common/DKFlowLayout$LayoutParams;)I

    move-result v0

    .line 190
    :goto_a
    return v0

    .line 187
    :cond_b
    iget v0, p0, Lcom/duoku/platform/view/common/DKFlowLayout;->b:I

    goto :goto_a
.end method


# virtual methods
.method protected a()Lcom/duoku/platform/view/common/DKFlowLayout$LayoutParams;
    .registers 3

    .prologue
    const/4 v1, -0x2

    .line 218
    new-instance v0, Lcom/duoku/platform/view/common/DKFlowLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/duoku/platform/view/common/DKFlowLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public a(Landroid/util/AttributeSet;)Lcom/duoku/platform/view/common/DKFlowLayout$LayoutParams;
    .registers 4

    .prologue
    .line 223
    new-instance v0, Lcom/duoku/platform/view/common/DKFlowLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/duoku/platform/view/common/DKFlowLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/duoku/platform/view/common/DKFlowLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected a(Landroid/view/ViewGroup$LayoutParams;)Lcom/duoku/platform/view/common/DKFlowLayout$LayoutParams;
    .registers 3

    .prologue
    .line 228
    new-instance v0, Lcom/duoku/platform/view/common/DKFlowLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/duoku/platform/view/common/DKFlowLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3

    .prologue
    .line 213
    instance-of v0, p1, Lcom/duoku/platform/view/common/DKFlowLayout$LayoutParams;

    return v0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 6

    .prologue
    .line 206
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    .line 207
    invoke-direct {p0, p1, p2}, Lcom/duoku/platform/view/common/DKFlowLayout;->a(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 208
    return v0
.end method

.method protected synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/duoku/platform/view/common/DKFlowLayout;->a()Lcom/duoku/platform/view/common/DKFlowLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/duoku/platform/view/common/DKFlowLayout;->a(Landroid/util/AttributeSet;)Lcom/duoku/platform/view/common/DKFlowLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/duoku/platform/view/common/DKFlowLayout;->a(Landroid/view/ViewGroup$LayoutParams;)Lcom/duoku/platform/view/common/DKFlowLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .registers 14

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/duoku/platform/view/common/DKFlowLayout;->getChildCount()I

    move-result v2

    .line 197
    const/4 v0, 0x0

    move v1, v0

    :goto_6
    if-lt v1, v2, :cond_9

    .line 202
    return-void

    .line 198
    :cond_9
    invoke-virtual {p0, v1}, Lcom/duoku/platform/view/common/DKFlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 199
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/view/common/DKFlowLayout$LayoutParams;

    .line 200
    invoke-static {v0}, Lcom/duoku/platform/view/common/DKFlowLayout$LayoutParams;->d(Lcom/duoku/platform/view/common/DKFlowLayout$LayoutParams;)I

    move-result v4

    invoke-static {v0}, Lcom/duoku/platform/view/common/DKFlowLayout$LayoutParams;->e(Lcom/duoku/platform/view/common/DKFlowLayout$LayoutParams;)I

    move-result v5

    invoke-static {v0}, Lcom/duoku/platform/view/common/DKFlowLayout$LayoutParams;->d(Lcom/duoku/platform/view/common/DKFlowLayout$LayoutParams;)I

    move-result v6

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v6, v7

    invoke-static {v0}, Lcom/duoku/platform/view/common/DKFlowLayout$LayoutParams;->e(Lcom/duoku/platform/view/common/DKFlowLayout$LayoutParams;)I

    move-result v0

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v0, v7

    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/view/View;->layout(IIII)V

    .line 197
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6
.end method

.method protected onMeasure(II)V
    .registers 27

    .prologue
    .line 61
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/duoku/platform/view/common/DKFlowLayout;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Lcom/duoku/platform/view/common/DKFlowLayout;->getPaddingLeft()I

    move-result v3

    sub-int v7, v2, v3

    .line 62
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/duoku/platform/view/common/DKFlowLayout;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Lcom/duoku/platform/view/common/DKFlowLayout;->getPaddingLeft()I

    move-result v3

    sub-int v8, v2, v3

    .line 64
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 65
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 70
    move-object/from16 v0, p0

    iget v2, v0, Lcom/duoku/platform/view/common/DKFlowLayout;->d:I

    if-nez v2, :cond_5f

    move v3, v4

    move v6, v7

    .line 78
    :goto_2e
    const/16 v18, 0x0

    .line 79
    const/16 v17, 0x0

    .line 80
    const/4 v15, 0x0

    .line 83
    const/4 v14, 0x0

    .line 85
    const/16 v19, 0x0

    .line 86
    const/4 v9, 0x0

    .line 88
    invoke-virtual/range {p0 .. p0}, Lcom/duoku/platform/view/common/DKFlowLayout;->getChildCount()I

    move-result v22

    .line 89
    const/4 v2, 0x0

    move/from16 v21, v2

    move v2, v9

    :goto_3f
    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_62

    .line 160
    move-object/from16 v0, p0

    iget v3, v0, Lcom/duoku/platform/view/common/DKFlowLayout;->d:I

    if-nez v3, :cond_119

    .line 161
    move/from16 v0, v19

    move/from16 v1, p1

    invoke-static {v0, v1}, Lcom/duoku/platform/view/common/DKFlowLayout;->resolveSize(II)I

    move-result v3

    .line 162
    move/from16 v0, p2

    invoke-static {v2, v0}, Lcom/duoku/platform/view/common/DKFlowLayout;->resolveSize(II)I

    move-result v2

    .line 161
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/duoku/platform/view/common/DKFlowLayout;->setMeasuredDimension(II)V

    .line 167
    :goto_5e
    return-void

    :cond_5f
    move v3, v5

    move v6, v8

    .line 75
    goto :goto_2e

    .line 90
    :cond_62
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/duoku/platform/view/common/DKFlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 91
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-ne v9, v10, :cond_7b

    move/from16 v9, v19

    .line 89
    :goto_74
    add-int/lit8 v10, v21, 0x1

    move/from16 v21, v10

    move/from16 v19, v9

    goto :goto_3f

    .line 96
    :cond_7b
    const/high16 v2, 0x40000000

    if-ne v4, v2, :cond_fe

    .line 97
    const/high16 v2, -0x80000000

    .line 96
    :goto_81
    invoke-static {v7, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 98
    const/high16 v2, 0x40000000

    if-ne v5, v2, :cond_100

    .line 99
    const/high16 v2, -0x80000000

    .line 98
    :goto_8b
    invoke-static {v8, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 95
    invoke-virtual {v12, v9, v2}, Landroid/view/View;->measure(II)V

    .line 102
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/duoku/platform/view/common/DKFlowLayout$LayoutParams;

    .line 104
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/duoku/platform/view/common/DKFlowLayout;->b(Lcom/duoku/platform/view/common/DKFlowLayout$LayoutParams;)I

    move-result v10

    .line 105
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/duoku/platform/view/common/DKFlowLayout;->a(Lcom/duoku/platform/view/common/DKFlowLayout$LayoutParams;)I

    move-result v9

    .line 107
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    .line 108
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    .line 115
    move-object/from16 v0, p0

    iget v13, v0, Lcom/duoku/platform/view/common/DKFlowLayout;->d:I

    if-nez v13, :cond_102

    move v13, v11

    move v11, v12

    .line 127
    :goto_b4
    add-int/2addr v15, v13

    .line 128
    add-int v16, v15, v10

    .line 130
    invoke-static {v2}, Lcom/duoku/platform/view/common/DKFlowLayout$LayoutParams;->a(Lcom/duoku/platform/view/common/DKFlowLayout$LayoutParams;)Z

    move-result v20

    if-nez v20, :cond_109

    if-eqz v3, :cond_c1

    if-gt v15, v6, :cond_109

    :cond_c1
    const/16 v20, 0x0

    .line 131
    :goto_c3
    if-eqz v20, :cond_12e

    .line 132
    add-int v14, v14, v18

    .line 136
    add-int v15, v11, v9

    .line 137
    add-int/2addr v10, v13

    move/from16 v16, v11

    move/from16 v17, v15

    move v15, v10

    move v10, v14

    move v14, v13

    .line 140
    :goto_d1
    add-int/2addr v9, v11

    move/from16 v0, v17

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v18

    .line 141
    move/from16 v0, v16

    invoke-static {v0, v11}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 146
    move-object/from16 v0, p0

    iget v9, v0, Lcom/duoku/platform/view/common/DKFlowLayout;->d:I

    if-nez v9, :cond_10c

    .line 147
    invoke-virtual/range {p0 .. p0}, Lcom/duoku/platform/view/common/DKFlowLayout;->getPaddingLeft()I

    move-result v9

    add-int/2addr v9, v14

    sub-int v11, v9, v13

    .line 148
    invoke-virtual/range {p0 .. p0}, Lcom/duoku/platform/view/common/DKFlowLayout;->getPaddingTop()I

    move-result v9

    add-int/2addr v9, v10

    .line 154
    :goto_f0
    invoke-virtual {v2, v11, v9}, Lcom/duoku/platform/view/common/DKFlowLayout$LayoutParams;->a(II)V

    .line 156
    move/from16 v0, v19

    invoke-static {v0, v14}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 157
    add-int v2, v10, v17

    move v14, v10

    goto/16 :goto_74

    :cond_fe
    move v2, v4

    .line 97
    goto :goto_81

    :cond_100
    move v2, v5

    .line 99
    goto :goto_8b

    :cond_102
    move v13, v12

    move/from16 v23, v9

    move v9, v10

    move/from16 v10, v23

    .line 124
    goto :goto_b4

    .line 130
    :cond_109
    const/16 v20, 0x1

    goto :goto_c3

    .line 150
    :cond_10c
    invoke-virtual/range {p0 .. p0}, Lcom/duoku/platform/view/common/DKFlowLayout;->getPaddingLeft()I

    move-result v9

    add-int v11, v9, v10

    .line 151
    invoke-virtual/range {p0 .. p0}, Lcom/duoku/platform/view/common/DKFlowLayout;->getPaddingTop()I

    move-result v9

    add-int/2addr v9, v14

    sub-int/2addr v9, v12

    goto :goto_f0

    .line 164
    :cond_119
    move/from16 v0, p1

    invoke-static {v2, v0}, Lcom/duoku/platform/view/common/DKFlowLayout;->resolveSize(II)I

    move-result v2

    .line 165
    move/from16 v0, v19

    move/from16 v1, p2

    invoke-static {v0, v1}, Lcom/duoku/platform/view/common/DKFlowLayout;->resolveSize(II)I

    move-result v3

    .line 164
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/duoku/platform/view/common/DKFlowLayout;->setMeasuredDimension(II)V

    goto/16 :goto_5e

    :cond_12e
    move v10, v14

    move v14, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    goto :goto_d1
.end method
