.class public Lcom/qbao/core/util/o;
.super Ljava/lang/Object;
.source "UIUtil.java"


# static fields
.field public static final cI:I = 0x0

.field public static final cJ:I = 0x1

.field public static final cK:I = 0x2

.field public static final cL:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static O(Ljava/lang/String;)I
    .registers 2

    .prologue
    .line 611
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public static a(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 10

    .prologue
    const/16 v1, 0x32

    const/high16 v7, 0x41200000

    const/4 v6, 0x0

    .line 118
    if-eqz p1, :cond_13

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-lt v0, v1, :cond_13

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ge v0, v1, :cond_14

    .line 137
    :cond_13
    :goto_13
    return-object p1

    .line 120
    :cond_14
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 121
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 124
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 125
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 126
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 130
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 131
    invoke-virtual {v1, v6, v6, v6, v6}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 132
    const v5, -0xbdbdbe

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 133
    invoke-virtual {v1, v4, v7, v7, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 135
    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 136
    invoke-virtual {v1, p1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    move-object p1, v0

    .line 137
    goto :goto_13
.end method

.method public static a(IIFI)Landroid/graphics/drawable/GradientDrawable;
    .registers 9

    .prologue
    const/high16 v4, 0x40000000

    .line 142
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_9

    const/high16 p2, 0x41200000

    .line 143
    :cond_9
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 144
    const/16 v1, 0x8

    new-array v1, v1, [F

    const/4 v2, 0x0

    add-float v3, p2, v4

    aput v3, v1, v2

    const/4 v2, 0x1

    add-float v3, p2, v4

    aput v3, v1, v2

    const/4 v2, 0x2

    add-float v3, p2, v4

    aput v3, v1, v2

    const/4 v2, 0x3

    add-float v3, p2, v4

    aput v3, v1, v2

    const/4 v2, 0x4

    aput p2, v1, v2

    const/4 v2, 0x5

    aput p2, v1, v2

    const/4 v2, 0x6

    aput p2, v1, v2

    const/4 v2, 0x7

    aput p2, v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 145
    invoke-virtual {v0, p3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 146
    invoke-virtual {v0, p0, p1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 147
    return-object v0
.end method

.method public static a(Landroid/content/Context;ZLjava/lang/String;IIFIII)Landroid/widget/Button;
    .registers 13

    .prologue
    const/4 v1, -0x2

    const/high16 v2, 0x3f800000

    .line 220
    cmpg-float v0, p5, v2

    if-gez v0, :cond_3c

    const/4 v0, 0x0

    cmpl-float v0, p5, v0

    if-lez v0, :cond_3c

    .line 221
    sget v0, Lcom/qbao/core/d/d;->aC:I

    int-to-float v0, v0

    mul-float/2addr v0, p5

    float-to-int v0, v0

    .line 227
    :goto_11
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 230
    if-eqz p1, :cond_44

    .line 231
    new-instance v0, Landroid/widget/Button;

    const/4 v1, 0x0

    const v3, 0x1030016

    invoke-direct {v0, p0, v1, v3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 236
    :goto_21
    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 237
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setGravity(I)V

    .line 238
    invoke-virtual {v0, p3}, Landroid/widget/Button;->setTextColor(I)V

    .line 239
    const/4 v1, 0x1

    int-to-float v3, p4

    invoke-virtual {v0, v1, v3}, Landroid/widget/Button;->setTextSize(IF)V

    .line 240
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 241
    invoke-static {p6, p7, p8}, Lcom/qbao/core/d/b;->a(III)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 243
    return-object v0

    .line 222
    :cond_3c
    cmpl-float v0, p5, v2

    if-ltz v0, :cond_42

    .line 223
    const/4 v0, -0x1

    .line 224
    goto :goto_11

    :cond_42
    move v0, v1

    .line 225
    goto :goto_11

    .line 233
    :cond_44
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    goto :goto_21
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/CheckBox;
    .registers 7

    .prologue
    .line 478
    new-instance v0, Landroid/widget/CheckBox;

    invoke-direct {v0, p0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 479
    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 480
    invoke-virtual {v0, p2}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 481
    const/4 v1, 0x1

    int-to-float v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/widget/CheckBox;->setTextSize(IF)V

    .line 482
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;FILandroid/graphics/drawable/Drawable;)Landroid/widget/EditText;
    .registers 10

    .prologue
    const/4 v4, 0x2

    const/4 v1, -0x2

    const/high16 v3, 0x3f800000

    .line 376
    new-instance v2, Landroid/widget/EditText;

    invoke-direct {v2, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 377
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 378
    invoke-virtual {v2, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 381
    :cond_12
    cmpg-float v0, p2, v3

    if-gez v0, :cond_46

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_46

    .line 382
    sget v0, Lcom/qbao/core/d/d;->aC:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    .line 388
    :goto_20
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 389
    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 390
    invoke-virtual {v2, p4}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 391
    invoke-virtual {v2}, Landroid/widget/EditText;->setSingleLine()V

    .line 394
    const/4 v0, 0x1

    if-ne p3, v0, :cond_3d

    .line 395
    const/16 v0, 0x81

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 396
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 399
    :cond_3d
    if-eq p3, v4, :cond_42

    const/4 v0, 0x3

    if-ne p3, v0, :cond_45

    .line 400
    :cond_42
    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setInputType(I)V

    .line 403
    :cond_45
    return-object v2

    .line 383
    :cond_46
    cmpl-float v0, p2, v3

    if-ltz v0, :cond_4c

    .line 384
    const/4 v0, -0x1

    .line 385
    goto :goto_20

    :cond_4c
    move v0, v1

    .line 386
    goto :goto_20
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;FLandroid/graphics/drawable/Drawable;)Landroid/widget/EditText;
    .registers 5

    .prologue
    .line 363
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/qbao/core/util/o;->a(Landroid/content/Context;Ljava/lang/String;FILandroid/graphics/drawable/Drawable;)Landroid/widget/EditText;

    move-result-object v0

    return-object v0
.end method

.method public static varargs a(Landroid/content/Context;Lcom/qbao/core/d/d$a;ZI[Landroid/view/View;)Landroid/widget/LinearLayout;
    .registers 13

    .prologue
    const/4 v0, 0x3

    const/4 v3, -0x2

    const/16 v1, 0x11

    const/high16 v7, 0x3f800000

    const/4 v2, 0x0

    .line 500
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 504
    sget-object v3, Lcom/qbao/core/d/d$a;->aO:Lcom/qbao/core/d/d$a;

    if-eq p1, v3, :cond_14

    sget-object v3, Lcom/qbao/core/d/d$a;->aQ:Lcom/qbao/core/d/d$a;

    if-ne p1, v3, :cond_4d

    .line 505
    :cond_14
    sget-object v3, Lcom/qbao/core/d/d$a;->aO:Lcom/qbao/core/d/d$a;

    if-ne p1, v3, :cond_22

    :goto_18
    invoke-static {p0, v2, p2, v0, v2}, Lcom/qbao/core/util/o;->a(Landroid/content/Context;ZZII)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 506
    array-length v5, p4

    move v3, v2

    :goto_1e
    if-lt v2, v5, :cond_24

    move-object v0, v1

    .line 578
    :goto_21
    return-object v0

    :cond_22
    move v0, v1

    .line 505
    goto :goto_18

    .line 506
    :cond_24
    aget-object v6, p4, v2

    .line 507
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_42

    .line 508
    array-length v0, p4

    add-int/lit8 v0, v0, -0x1

    if-eq v3, v0, :cond_39

    .line 509
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput p3, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 517
    :cond_39
    :goto_39
    add-int/lit8 v0, v3, 0x1

    .line 518
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 506
    add-int/lit8 v2, v2, 0x1

    move v3, v0

    goto :goto_1e

    .line 512
    :cond_42
    array-length v0, p4

    add-int/lit8 v0, v0, -0x1

    if-eq v3, v0, :cond_49

    .line 513
    iput p3, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 515
    :cond_49
    invoke-virtual {v6, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_39

    .line 524
    :cond_4d
    sget-object v3, Lcom/qbao/core/d/d$a;->aP:Lcom/qbao/core/d/d$a;

    if-ne p1, v3, :cond_77

    .line 525
    const/4 v0, 0x5

    invoke-static {p0, v2, p2, v0, v2}, Lcom/qbao/core/util/o;->a(Landroid/content/Context;ZZII)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 526
    array-length v3, p4

    :goto_57
    if-lt v2, v3, :cond_5b

    move-object v0, v1

    .line 535
    goto :goto_21

    .line 526
    :cond_5b
    aget-object v5, p4, v2

    .line 527
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_71

    .line 528
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput p3, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 533
    :goto_6b
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 526
    add-int/lit8 v2, v2, 0x1

    goto :goto_57

    .line 530
    :cond_71
    iput p3, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 531
    invoke-virtual {v5, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_6b

    .line 539
    :cond_77
    sget-object v3, Lcom/qbao/core/d/d$a;->aR:Lcom/qbao/core/d/d$a;

    if-ne p1, v3, :cond_b9

    .line 540
    if-eqz p4, :cond_81

    array-length v3, p4

    const/4 v4, 0x2

    if-eq v3, v4, :cond_88

    .line 541
    :cond_81
    sget-object v0, Lcom/qbao/core/d/d$a;->aO:Lcom/qbao/core/d/d$a;

    invoke-static {p0, v0, p2, p3, p4}, Lcom/qbao/core/util/o;->a(Landroid/content/Context;Lcom/qbao/core/d/d$a;ZI[Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v0

    goto :goto_21

    .line 543
    :cond_88
    invoke-static {p0, v2, p2, v1, v2}, Lcom/qbao/core/util/o;->a(Landroid/content/Context;ZZII)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 544
    invoke-static {p0, v2, v2, v0, v2}, Lcom/qbao/core/util/o;->a(Landroid/content/Context;ZZII)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 545
    const/4 v0, 0x5

    invoke-static {p0, v2, v2, v0, v2}, Lcom/qbao/core/util/o;->a(Landroid/content/Context;ZZII)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 546
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput v7, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 547
    aget-object v0, p4, v2

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 549
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput v7, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 550
    const/4 v0, 0x1

    aget-object v0, p4, v0

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 552
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 553
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object v0, v1

    .line 554
    goto/16 :goto_21

    .line 558
    :cond_b9
    sget-object v0, Lcom/qbao/core/d/d$a;->aS:Lcom/qbao/core/d/d$a;

    if-ne p1, v0, :cond_fb

    .line 559
    invoke-static {p0, v2, p2, v1, v2}, Lcom/qbao/core/util/o;->a(Landroid/content/Context;ZZII)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 560
    array-length v5, p4

    move v3, v2

    :goto_c3
    if-lt v2, v5, :cond_c8

    move-object v0, v1

    .line 576
    goto/16 :goto_21

    .line 560
    :cond_c8
    aget-object v6, p4, v2

    .line 561
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_ee

    .line 562
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput v7, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 563
    array-length v0, p4

    add-int/lit8 v0, v0, -0x1

    if-eq v3, v0, :cond_e5

    .line 564
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput p3, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 573
    :cond_e5
    :goto_e5
    add-int/lit8 v3, v3, 0x1

    .line 574
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 560
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_c3

    .line 567
    :cond_ee
    iput v7, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 568
    array-length v0, p4

    add-int/lit8 v0, v0, -0x1

    if-eq v3, v0, :cond_f7

    .line 569
    iput p3, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 571
    :cond_f7
    invoke-virtual {v6, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_e5

    .line 578
    :cond_fb
    const/4 v0, 0x0

    goto/16 :goto_21
.end method

.method public static a(Landroid/content/Context;ZII)Landroid/widget/LinearLayout;
    .registers 7

    .prologue
    const/4 v2, -0x1

    .line 258
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 259
    if-eqz p1, :cond_14

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 260
    :goto_d
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 261
    invoke-virtual {v1, p2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 262
    return-object v1

    .line 259
    :cond_14
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, p3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_d
.end method

.method public static a(Landroid/content/Context;ZZII)Landroid/widget/LinearLayout;
    .registers 9

    .prologue
    const/4 v1, -0x2

    .line 189
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 190
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz p2, :cond_1e

    const/4 v0, -0x1

    :goto_b
    invoke-direct {v3, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 191
    invoke-virtual {v2, p3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 192
    if-eqz p1, :cond_20

    const/4 v0, 0x1

    :goto_14
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 193
    invoke-virtual {v2, p4, p4, p4, p4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 194
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 195
    return-object v2

    :cond_1e
    move v0, v1

    .line 190
    goto :goto_b

    .line 192
    :cond_20
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public static a(Landroid/content/Context;F)Landroid/widget/ScrollView;
    .registers 7

    .prologue
    const/4 v1, -0x1

    const/high16 v4, 0x3f800000

    .line 587
    new-instance v2, Landroid/widget/ScrollView;

    invoke-direct {v2, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 588
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/widget/ScrollView;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 590
    cmpl-float v0, p1, v4

    if-ltz v0, :cond_1c

    move v0, v1

    .line 597
    :goto_11
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 598
    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 599
    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 600
    return-object v2

    .line 592
    :cond_1c
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_27

    .line 593
    sget v0, Lcom/qbao/core/d/d;->aD:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    .line 594
    goto :goto_11

    .line 595
    :cond_27
    const/4 v0, -0x2

    goto :goto_11
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;
    .registers 8

    .prologue
    const/4 v2, -0x2

    .line 273
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 274
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 275
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 277
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 278
    const/4 v1, 0x1

    int-to-float v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 279
    new-instance v1, Lcom/qbao/core/util/o$1;

    invoke-direct {v1, p3, v0, p2}, Lcom/qbao/core/util/o$1;-><init>(ILandroid/widget/TextView;I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 294
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;IIILandroid/view/View$OnClickListener;)Landroid/widget/TextView;
    .registers 10

    .prologue
    const/4 v2, -0x2

    .line 421
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 422
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 423
    const/4 v2, 0x1

    int-to-float v3, p4

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 424
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 425
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<u>"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</u>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 426
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 427
    invoke-virtual {v0, p5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 428
    new-instance v1, Lcom/qbao/core/util/o$2;

    invoke-direct {v1, v0, p3, p2}, Lcom/qbao/core/util/o$2;-><init>(Landroid/widget/TextView;II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 440
    return-object v0
.end method

.method public static varargs a(Landroid/content/Context;Ljava/lang/String;II[Lcom/qbao/core/d/c;)Landroid/widget/TextView;
    .registers 15

    .prologue
    const/4 v2, -0x2

    const/4 v1, 0x0

    .line 444
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 445
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 446
    const/4 v2, 0x1

    int-to-float v3, p3

    invoke-virtual {v4, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 447
    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 448
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 450
    array-length v0, p4

    new-array v5, v0, [Ljava/lang/String;

    .line 452
    array-length v6, p4

    move v0, v1

    move v2, v1

    :goto_1d
    if-lt v0, v6, :cond_45

    .line 455
    invoke-static {p1, v5}, Lcom/qbao/core/util/p;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 456
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 457
    array-length v5, p4

    move v0, v1

    :goto_2a
    if-lt v0, v5, :cond_53

    .line 461
    sget-object v0, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v4, v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 462
    aget-object v0, p4, v1

    invoke-virtual {v0}, Lcom/qbao/core/d/c;->J()I

    move-result v0

    aget-object v1, p4, v1

    invoke-virtual {v1}, Lcom/qbao/core/d/c;->K()I

    move-result v1

    invoke-static {v0, v1}, Lcom/qbao/core/d/a;->a(II)Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 463
    return-object v4

    .line 452
    :cond_45
    aget-object v7, p4, v0

    .line 453
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v7}, Lcom/qbao/core/d/c;->getURL()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v2

    .line 452
    add-int/lit8 v0, v0, 0x1

    move v2, v3

    goto :goto_1d

    .line 457
    :cond_53
    aget-object v6, p4, v0

    .line 458
    invoke-virtual {v6}, Lcom/qbao/core/d/c;->getURL()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 459
    invoke-virtual {v6}, Lcom/qbao/core/d/c;->length()I

    move-result v8

    add-int/2addr v8, v7

    const/16 v9, 0x12

    invoke-virtual {v3, v6, v7, v8, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 457
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a
.end method

.method public static varargs a(Landroid/content/Context;Ljava/lang/String;II[Ljava/lang/String;)Landroid/widget/TextView;
    .registers 8

    .prologue
    const/4 v2, -0x2

    .line 307
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 308
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 309
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 310
    invoke-static {p1, p4}, Lcom/qbao/core/util/p;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 312
    const/4 v1, 0x1

    int-to-float v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 313
    return-object v0
.end method

.method public static varargs a(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/String;)Landroid/widget/TextView;
    .registers 7

    .prologue
    const/4 v2, -0x2

    .line 326
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 327
    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 328
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 329
    invoke-static {p1, p3}, Lcom/qbao/core/util/p;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 330
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 331
    const/4 v1, 0x1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 332
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;II)Landroid/widget/TextView;
    .registers 9

    .prologue
    const/4 v2, -0x2

    const/4 v3, 0x0

    .line 343
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 344
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 345
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 346
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 347
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 348
    const/4 v1, 0x1

    int-to-float v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 350
    if-eqz p2, :cond_24

    .line 351
    invoke-virtual {v0, p2, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 352
    sget v1, Lcom/qbao/core/d/d;->aJ:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 354
    :cond_24
    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;
    .registers 7

    .prologue
    .line 162
    const-string v0, ""

    .line 163
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<font color=\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</font>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 166
    :cond_27
    if-eqz p2, :cond_3e

    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<b>"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</b>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 169
    :cond_3e
    if-eqz p3, :cond_55

    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<u>"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</u>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 172
    :cond_55
    return-object v0
.end method

.method public static final a(Landroid/content/Context;II)V
    .registers 4

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/qbao/core/util/o;->a(Landroid/content/Context;IIZ)V

    .line 74
    return-void
.end method

.method public static final a(Landroid/content/Context;IIZ)V
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 57
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 59
    if-eqz p3, :cond_f

    .line 60
    const/16 v1, 0x11

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 62
    :cond_f
    return-void
.end method

.method public static final a(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 4

    .prologue
    .line 85
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 86
    return-void
.end method

.method public static final c(Landroid/content/Context;I)V
    .registers 3

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/qbao/core/util/o;->a(Landroid/content/Context;II)V

    .line 96
    return-void
.end method

.method public static final c(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 107
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/qbao/core/util/o;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 108
    return-void
.end method
