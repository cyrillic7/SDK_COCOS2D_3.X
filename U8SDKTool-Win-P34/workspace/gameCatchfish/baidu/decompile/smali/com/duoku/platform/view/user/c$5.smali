.class Lcom/duoku/platform/view/user/c$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/view/user/c;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/view/user/c;


# direct methods
.method constructor <init>(Lcom/duoku/platform/view/user/c;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/view/user/c$5;->a:Lcom/duoku/platform/view/user/c;

    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 320
    iget-object v0, p0, Lcom/duoku/platform/view/user/c$5;->a:Lcom/duoku/platform/view/user/c;

    invoke-static {v0}, Lcom/duoku/platform/view/user/c;->d(Lcom/duoku/platform/view/user/c;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 321
    iget-object v0, p0, Lcom/duoku/platform/view/user/c$5;->a:Lcom/duoku/platform/view/user/c;

    invoke-static {v0}, Lcom/duoku/platform/view/user/c;->u(Lcom/duoku/platform/view/user/c;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 322
    iget-object v0, p0, Lcom/duoku/platform/view/user/c$5;->a:Lcom/duoku/platform/view/user/c;

    invoke-static {v0}, Lcom/duoku/platform/view/user/c;->s(Lcom/duoku/platform/view/user/c;)V

    .line 323
    return-void
.end method
