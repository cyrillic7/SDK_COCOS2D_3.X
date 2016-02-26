.class Lcom/qbao/sdk/ui/BaseView$4;
.super Ljava/lang/Object;
.source "BaseView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qbao/sdk/ui/BaseView;->a(Ljava/lang/String;ZZZLandroid/view/View$OnClickListener;)Landroid/widget/RelativeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic ef:Landroid/widget/TextView;

.field final synthetic en:Lcom/qbao/sdk/ui/BaseView;

.field private final synthetic er:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/qbao/sdk/ui/BaseView;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/qbao/sdk/ui/BaseView$4;->en:Lcom/qbao/sdk/ui/BaseView;

    iput-object p2, p0, Lcom/qbao/sdk/ui/BaseView$4;->er:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/qbao/sdk/ui/BaseView$4;->ef:Landroid/widget/TextView;

    .line 550
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6

    .prologue
    .line 554
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1c

    .line 555
    iget-object v0, p0, Lcom/qbao/sdk/ui/BaseView$4;->er:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/qbao/sdk/ui/BaseView$4;->en:Lcom/qbao/sdk/ui/BaseView;

    const-string v2, "qb_title_back_down"

    invoke-virtual {v1, v2}, Lcom/qbao/sdk/ui/BaseView;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 556
    iget-object v0, p0, Lcom/qbao/sdk/ui/BaseView$4;->ef:Landroid/widget/TextView;

    sget v1, Lcom/qbao/sdk/e/g;->hP:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 561
    :cond_1a
    :goto_1a
    const/4 v0, 0x0

    return v0

    .line 557
    :cond_1c
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1a

    .line 558
    iget-object v0, p0, Lcom/qbao/sdk/ui/BaseView$4;->er:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/qbao/sdk/ui/BaseView$4;->en:Lcom/qbao/sdk/ui/BaseView;

    const-string v2, "qb_title_back"

    invoke-virtual {v1, v2}, Lcom/qbao/sdk/ui/BaseView;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 559
    iget-object v0, p0, Lcom/qbao/sdk/ui/BaseView$4;->ef:Landroid/widget/TextView;

    sget v1, Lcom/qbao/sdk/e/g;->hC:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1a
.end method
