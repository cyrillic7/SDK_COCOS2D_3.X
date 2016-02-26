.class Lcom/duoku/platform/view/a/a$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/view/a/a;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/view/a/a;


# direct methods
.method constructor <init>(Lcom/duoku/platform/view/a/a;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/view/a/a$9;->a:Lcom/duoku/platform/view/a/a;

    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 323
    iget-object v0, p0, Lcom/duoku/platform/view/a/a$9;->a:Lcom/duoku/platform/view/a/a;

    invoke-static {v0}, Lcom/duoku/platform/view/a/a;->l(Lcom/duoku/platform/view/a/a;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 324
    iget-object v0, p0, Lcom/duoku/platform/view/a/a$9;->a:Lcom/duoku/platform/view/a/a;

    invoke-static {v0}, Lcom/duoku/platform/view/a/a;->m(Lcom/duoku/platform/view/a/a;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 326
    iget-object v0, p0, Lcom/duoku/platform/view/a/a$9;->a:Lcom/duoku/platform/view/a/a;

    iget-object v1, p0, Lcom/duoku/platform/view/a/a$9;->a:Lcom/duoku/platform/view/a/a;

    invoke-static {v1}, Lcom/duoku/platform/view/a/a;->n(Lcom/duoku/platform/view/a/a;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/duoku/platform/view/a/a;->b(Lcom/duoku/platform/view/a/a;I)V

    .line 327
    return-void
.end method
