.class Lcom/duoku/platform/view/user/b$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/view/user/b;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/view/user/b;


# direct methods
.method constructor <init>(Lcom/duoku/platform/view/user/b;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/view/user/b$3;->a:Lcom/duoku/platform/view/user/b;

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 269
    iget-object v0, p0, Lcom/duoku/platform/view/user/b$3;->a:Lcom/duoku/platform/view/user/b;

    invoke-static {v0}, Lcom/duoku/platform/view/user/b;->c(Lcom/duoku/platform/view/user/b;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 270
    iget-object v0, p0, Lcom/duoku/platform/view/user/b$3;->a:Lcom/duoku/platform/view/user/b;

    invoke-static {v0}, Lcom/duoku/platform/view/user/b;->r(Lcom/duoku/platform/view/user/b;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 272
    iget-object v0, p0, Lcom/duoku/platform/view/user/b$3;->a:Lcom/duoku/platform/view/user/b;

    iget-object v1, p0, Lcom/duoku/platform/view/user/b$3;->a:Lcom/duoku/platform/view/user/b;

    invoke-static {v1}, Lcom/duoku/platform/view/user/b;->g(Lcom/duoku/platform/view/user/b;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/duoku/platform/view/user/b;->b(Lcom/duoku/platform/view/user/b;I)V

    .line 273
    return-void
.end method
