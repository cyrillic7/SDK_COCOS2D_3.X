.class Lcom/duoku/platform/view/user/e$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/view/user/e;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/view/user/e;


# direct methods
.method constructor <init>(Lcom/duoku/platform/view/user/e;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/view/user/e$3;->a:Lcom/duoku/platform/view/user/e;

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 230
    iget-object v0, p0, Lcom/duoku/platform/view/user/e$3;->a:Lcom/duoku/platform/view/user/e;

    invoke-static {v0}, Lcom/duoku/platform/view/user/e;->d(Lcom/duoku/platform/view/user/e;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 231
    iget-object v0, p0, Lcom/duoku/platform/view/user/e$3;->a:Lcom/duoku/platform/view/user/e;

    invoke-static {v0}, Lcom/duoku/platform/view/user/e;->r(Lcom/duoku/platform/view/user/e;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 233
    iget-object v0, p0, Lcom/duoku/platform/view/user/e$3;->a:Lcom/duoku/platform/view/user/e;

    invoke-static {v0}, Lcom/duoku/platform/view/user/e;->p(Lcom/duoku/platform/view/user/e;)V

    .line 235
    return-void
.end method