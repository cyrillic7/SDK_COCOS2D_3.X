.class Lcom/duoku/platform/view/a/e$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/view/a/e;->b(Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/duoku/platform/view/a/e$8;->a:Lcom/duoku/platform/view/a/e;

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 287
    iget-object v0, p0, Lcom/duoku/platform/view/a/e$8;->a:Lcom/duoku/platform/view/a/e;

    invoke-static {v0}, Lcom/duoku/platform/view/a/e;->q(Lcom/duoku/platform/view/a/e;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 288
    iget-object v0, p0, Lcom/duoku/platform/view/a/e$8;->a:Lcom/duoku/platform/view/a/e;

    invoke-static {v0}, Lcom/duoku/platform/view/a/e;->r(Lcom/duoku/platform/view/a/e;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 290
    iget-object v0, p0, Lcom/duoku/platform/view/a/e$8;->a:Lcom/duoku/platform/view/a/e;

    invoke-static {v0}, Lcom/duoku/platform/view/a/e;->s(Lcom/duoku/platform/view/a/e;)V

    .line 291
    return-void
.end method
