.class Lcom/qbao/sdk/ui/BaseView$2;
.super Ljava/lang/Object;
.source "BaseView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qbao/sdk/ui/BaseView;->b(ZLjava/lang/String;IIFIIII)Landroid/widget/Button;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic cM:I

.field final synthetic en:Lcom/qbao/sdk/ui/BaseView;

.field private final synthetic eo:Landroid/widget/Button;

.field private final synthetic ep:I

.field private final synthetic eq:I


# direct methods
.method constructor <init>(Lcom/qbao/sdk/ui/BaseView;Landroid/widget/Button;III)V
    .registers 6

    .prologue
    .line 1
    iput-object p1, p0, Lcom/qbao/sdk/ui/BaseView$2;->en:Lcom/qbao/sdk/ui/BaseView;

    iput-object p2, p0, Lcom/qbao/sdk/ui/BaseView$2;->eo:Landroid/widget/Button;

    iput p3, p0, Lcom/qbao/sdk/ui/BaseView$2;->cM:I

    iput p4, p0, Lcom/qbao/sdk/ui/BaseView$2;->eq:I

    iput p5, p0, Lcom/qbao/sdk/ui/BaseView$2;->ep:I

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7

    .prologue
    const/4 v3, 0x1

    .line 280
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_16

    .line 281
    iget-object v0, p0, Lcom/qbao/sdk/ui/BaseView$2;->eo:Landroid/widget/Button;

    iget v1, p0, Lcom/qbao/sdk/ui/BaseView$2;->cM:I

    iget v2, p0, Lcom/qbao/sdk/ui/BaseView$2;->eq:I

    invoke-static {v3, v1, v2}, Lcom/qbao/core/d/b;->a(III)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 285
    :cond_14
    :goto_14
    const/4 v0, 0x0

    return v0

    .line 282
    :cond_16
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_14

    .line 283
    iget-object v0, p0, Lcom/qbao/sdk/ui/BaseView$2;->eo:Landroid/widget/Button;

    iget v1, p0, Lcom/qbao/sdk/ui/BaseView$2;->ep:I

    iget v2, p0, Lcom/qbao/sdk/ui/BaseView$2;->eq:I

    invoke-static {v3, v1, v2}, Lcom/qbao/core/d/b;->a(III)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_14
.end method
