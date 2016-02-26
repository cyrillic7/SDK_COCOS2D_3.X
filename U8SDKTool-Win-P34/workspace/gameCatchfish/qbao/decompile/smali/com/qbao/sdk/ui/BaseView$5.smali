.class Lcom/qbao/sdk/ui/BaseView$5;
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
.field final synthetic en:Lcom/qbao/sdk/ui/BaseView;

.field private final synthetic es:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/qbao/sdk/ui/BaseView;Landroid/widget/ImageView;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/qbao/sdk/ui/BaseView$5;->en:Lcom/qbao/sdk/ui/BaseView;

    iput-object p2, p0, Lcom/qbao/sdk/ui/BaseView$5;->es:Landroid/widget/ImageView;

    .line 596
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6

    .prologue
    .line 600
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_15

    .line 601
    iget-object v0, p0, Lcom/qbao/sdk/ui/BaseView$5;->es:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/qbao/sdk/ui/BaseView$5;->en:Lcom/qbao/sdk/ui/BaseView;

    const-string v2, "qb_title_close_down"

    invoke-virtual {v1, v2}, Lcom/qbao/sdk/ui/BaseView;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 605
    :cond_13
    :goto_13
    const/4 v0, 0x0

    return v0

    .line 602
    :cond_15
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    .line 603
    iget-object v0, p0, Lcom/qbao/sdk/ui/BaseView$5;->es:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/qbao/sdk/ui/BaseView$5;->en:Lcom/qbao/sdk/ui/BaseView;

    const-string v2, "qb_title_close"

    invoke-virtual {v1, v2}, Lcom/qbao/sdk/ui/BaseView;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_13
.end method
