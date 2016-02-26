.class Lcom/qbao/sdk/ui/PayView$4;
.super Ljava/lang/Object;
.source "PayView.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qbao/sdk/ui/PayView;->aV()Landroid/widget/LinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic fb:Lcom/qbao/sdk/ui/PayView;

.field private final synthetic fc:Landroid/widget/TextView;

.field private final synthetic fd:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/qbao/sdk/ui/PayView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/qbao/sdk/ui/PayView$4;->fb:Lcom/qbao/sdk/ui/PayView;

    iput-object p2, p0, Lcom/qbao/sdk/ui/PayView$4;->fc:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/qbao/sdk/ui/PayView$4;->fd:Landroid/widget/TextView;

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 6

    .prologue
    .line 190
    if-eqz p2, :cond_22

    .line 191
    iget-object v0, p0, Lcom/qbao/sdk/ui/PayView$4;->fb:Lcom/qbao/sdk/ui/PayView;

    invoke-static {v0}, Lcom/qbao/sdk/ui/PayView;->c(Lcom/qbao/sdk/ui/PayView;)Landroid/widget/CheckBox;

    move-result-object v0

    iget-object v1, p0, Lcom/qbao/sdk/ui/PayView$4;->fb:Lcom/qbao/sdk/ui/PayView;

    const-string v2, "qb_checked"

    invoke-virtual {v1, v2}, Lcom/qbao/sdk/ui/PayView;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 192
    iget-object v0, p0, Lcom/qbao/sdk/ui/PayView$4;->fc:Landroid/widget/TextView;

    sget v1, Lcom/qbao/sdk/e/g;->hJ:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 193
    iget-object v0, p0, Lcom/qbao/sdk/ui/PayView$4;->fd:Landroid/widget/TextView;

    sget v1, Lcom/qbao/sdk/e/g;->hJ:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 200
    :goto_21
    return-void

    .line 196
    :cond_22
    iget-object v0, p0, Lcom/qbao/sdk/ui/PayView$4;->fb:Lcom/qbao/sdk/ui/PayView;

    invoke-static {v0}, Lcom/qbao/sdk/ui/PayView;->c(Lcom/qbao/sdk/ui/PayView;)Landroid/widget/CheckBox;

    move-result-object v0

    iget-object v1, p0, Lcom/qbao/sdk/ui/PayView$4;->fb:Lcom/qbao/sdk/ui/PayView;

    const-string v2, "qb_unchecked"

    invoke-virtual {v1, v2}, Lcom/qbao/sdk/ui/PayView;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 197
    iget-object v0, p0, Lcom/qbao/sdk/ui/PayView$4;->fc:Landroid/widget/TextView;

    sget v1, Lcom/qbao/sdk/e/g;->hy:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 198
    iget-object v0, p0, Lcom/qbao/sdk/ui/PayView$4;->fd:Landroid/widget/TextView;

    sget v1, Lcom/qbao/sdk/e/g;->hy:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_21
.end method
