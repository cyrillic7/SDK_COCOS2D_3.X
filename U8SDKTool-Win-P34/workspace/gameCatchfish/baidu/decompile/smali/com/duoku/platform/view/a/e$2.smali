.class Lcom/duoku/platform/view/a/e$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/view/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/view/a/e;


# direct methods
.method constructor <init>(Lcom/duoku/platform/view/a/e;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/view/a/e$2;->a:Lcom/duoku/platform/view/a/e;

    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    const/16 v1, 0x8

    .line 337
    iget-object v0, p0, Lcom/duoku/platform/view/a/e$2;->a:Lcom/duoku/platform/view/a/e;

    invoke-static {v0}, Lcom/duoku/platform/view/a/e;->a(Lcom/duoku/platform/view/a/e;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eq v1, v0, :cond_17

    .line 339
    iget-object v0, p0, Lcom/duoku/platform/view/a/e$2;->a:Lcom/duoku/platform/view/a/e;

    invoke-static {v0}, Lcom/duoku/platform/view/a/e;->a(Lcom/duoku/platform/view/a/e;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 341
    :cond_17
    return-void
.end method
