.class public Lcom/qbao/core/d/b;
.super Landroid/graphics/drawable/ShapeDrawable;
.source "MyShapeDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qbao/core/d/b$a;
    }
.end annotation


# instance fields
.field private ax:Landroid/graphics/Paint;

.field private ay:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/shapes/Shape;III)V
    .registers 8

    .prologue
    const/4 v2, 0x1

    .line 29
    invoke-direct {p0, p1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 30
    new-instance v0, Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/qbao/core/d/b;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/qbao/core/d/b;->ax:Landroid/graphics/Paint;

    .line 31
    iget-object v0, p0, Lcom/qbao/core/d/b;->ax:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 32
    new-instance v0, Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/qbao/core/d/b;->ay:Landroid/graphics/Paint;

    .line 33
    iget-object v0, p0, Lcom/qbao/core/d/b;->ay:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 34
    iget-object v0, p0, Lcom/qbao/core/d/b;->ay:Landroid/graphics/Paint;

    int-to-float v1, p4

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 35
    iget-object v0, p0, Lcom/qbao/core/d/b;->ay:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 36
    iget-object v0, p0, Lcom/qbao/core/d/b;->ay:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 37
    return-void
.end method

.method public static a(III)Landroid/graphics/drawable/ShapeDrawable;
    .registers 8

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x0

    .line 70
    packed-switch p0, :pswitch_data_20

    move-object v0, v1

    .line 76
    :goto_6
    return-object v0

    .line 72
    :pswitch_7
    new-instance v0, Lcom/qbao/core/d/b;

    new-instance v1, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-direct {v0, v1, p1, p2, v4}, Lcom/qbao/core/d/b;-><init>(Landroid/graphics/drawable/shapes/Shape;III)V

    goto :goto_6

    .line 74
    :pswitch_12
    new-instance v0, Lcom/qbao/core/d/b;

    new-instance v2, Landroid/graphics/drawable/shapes/RoundRectShape;

    sget-object v3, Lcom/qbao/core/d/d;->aF:[F

    invoke-direct {v2, v3, v1, v1}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-direct {v0, v2, p1, p2, v4}, Lcom/qbao/core/d/b;-><init>(Landroid/graphics/drawable/shapes/Shape;III)V

    goto :goto_6

    .line 70
    nop

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_7
        :pswitch_12
    .end packed-switch
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/drawable/shapes/Shape;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 10

    .prologue
    const/high16 v5, 0x3f800000

    const/4 v4, 0x0

    .line 41
    iget-object v0, p0, Lcom/qbao/core/d/b;->ax:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/drawable/shapes/Shape;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 42
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 43
    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    invoke-virtual {p2}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 44
    new-instance v2, Landroid/graphics/RectF;

    .line 45
    invoke-virtual {p2}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    .line 46
    invoke-virtual {p2}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    .line 44
    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 47
    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    .line 43
    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 48
    invoke-virtual {p2, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 49
    iget-object v0, p0, Lcom/qbao/core/d/b;->ay:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/drawable/shapes/Shape;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 50
    return-void
.end method
