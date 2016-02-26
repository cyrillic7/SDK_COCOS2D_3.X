.class Lcom/qbao/sdk/ui/AboutView$3;
.super Ljava/lang/Object;
.source "AboutView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qbao/sdk/ui/AboutView;->b(ILjava/lang/String;)Landroid/widget/LinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic eb:Lcom/qbao/sdk/ui/AboutView;

.field private final synthetic ee:Landroid/widget/LinearLayout;

.field private final synthetic ef:Landroid/widget/TextView;

.field private final synthetic eg:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/qbao/sdk/ui/AboutView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/LinearLayout;)V
    .registers 5

    .prologue
    .line 1
    iput-object p1, p0, Lcom/qbao/sdk/ui/AboutView$3;->eb:Lcom/qbao/sdk/ui/AboutView;

    iput-object p2, p0, Lcom/qbao/sdk/ui/AboutView$3;->ee:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/qbao/sdk/ui/AboutView$3;->ef:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/qbao/sdk/ui/AboutView$3;->eg:Landroid/widget/LinearLayout;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7

    .prologue
    const/4 v3, 0x1

    .line 96
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_24

    .line 97
    iget-object v0, p0, Lcom/qbao/sdk/ui/AboutView$3;->ee:Landroid/widget/LinearLayout;

    sget v1, Lcom/qbao/sdk/e/g;->hQ:I

    sget v2, Lcom/qbao/sdk/e/g;->hQ:I

    invoke-static {v3, v1, v2}, Lcom/qbao/core/d/b;->a(III)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 98
    iget-object v0, p0, Lcom/qbao/sdk/ui/AboutView$3;->ef:Landroid/widget/TextView;

    sget v1, Lcom/qbao/sdk/e/g;->hP:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 99
    iget-object v0, p0, Lcom/qbao/sdk/ui/AboutView$3;->eg:Landroid/widget/LinearLayout;

    sget v1, Lcom/qbao/sdk/e/g;->hP:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 106
    :cond_22
    :goto_22
    const/4 v0, 0x0

    return v0

    .line 101
    :cond_24
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_22

    .line 102
    iget-object v0, p0, Lcom/qbao/sdk/ui/AboutView$3;->ee:Landroid/widget/LinearLayout;

    sget v1, Lcom/qbao/sdk/e/g;->hz:I

    sget v2, Lcom/qbao/sdk/e/g;->hz:I

    invoke-static {v3, v1, v2}, Lcom/qbao/core/d/b;->a(III)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 103
    iget-object v0, p0, Lcom/qbao/sdk/ui/AboutView$3;->ef:Landroid/widget/TextView;

    sget v1, Lcom/qbao/sdk/e/g;->hD:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 104
    iget-object v0, p0, Lcom/qbao/sdk/ui/AboutView$3;->eg:Landroid/widget/LinearLayout;

    sget v1, Lcom/qbao/sdk/e/g;->hD:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_22
.end method
