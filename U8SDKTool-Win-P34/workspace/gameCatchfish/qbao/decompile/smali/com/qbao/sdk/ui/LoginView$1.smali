.class Lcom/qbao/sdk/ui/LoginView$1;
.super Ljava/lang/Object;
.source "LoginView.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qbao/sdk/ui/LoginView;->aB()Landroid/widget/LinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic eS:Lcom/qbao/sdk/ui/LoginView;

.field private final synthetic eT:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/qbao/sdk/ui/LoginView;Landroid/widget/CheckBox;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/qbao/sdk/ui/LoginView$1;->eS:Lcom/qbao/sdk/ui/LoginView;

    iput-object p2, p0, Lcom/qbao/sdk/ui/LoginView$1;->eT:Landroid/widget/CheckBox;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 6

    .prologue
    .line 77
    if-eqz p2, :cond_10

    .line 78
    iget-object v0, p0, Lcom/qbao/sdk/ui/LoginView$1;->eT:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/qbao/sdk/ui/LoginView$1;->eS:Lcom/qbao/sdk/ui/LoginView;

    const-string v2, "qb_checked"

    invoke-virtual {v1, v2}, Lcom/qbao/sdk/ui/LoginView;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 82
    :goto_f
    return-void

    .line 80
    :cond_10
    iget-object v0, p0, Lcom/qbao/sdk/ui/LoginView$1;->eT:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/qbao/sdk/ui/LoginView$1;->eS:Lcom/qbao/sdk/ui/LoginView;

    const-string v2, "qb_unchecked"

    invoke-virtual {v1, v2}, Lcom/qbao/sdk/ui/LoginView;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_f
.end method
