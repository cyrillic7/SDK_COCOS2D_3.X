.class Lcom/duoku/platform/view/a/d$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/view/a/d;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/view/a/d;


# direct methods
.method constructor <init>(Lcom/duoku/platform/view/a/d;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/view/a/d$4;->a:Lcom/duoku/platform/view/a/d;

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 225
    iget-object v0, p0, Lcom/duoku/platform/view/a/d$4;->a:Lcom/duoku/platform/view/a/d;

    invoke-static {v0}, Lcom/duoku/platform/view/a/d;->d(Lcom/duoku/platform/view/a/d;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 226
    iget-object v0, p0, Lcom/duoku/platform/view/a/d$4;->a:Lcom/duoku/platform/view/a/d;

    invoke-static {v0}, Lcom/duoku/platform/view/a/d;->e(Lcom/duoku/platform/view/a/d;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 229
    iget-object v0, p0, Lcom/duoku/platform/view/a/d$4;->a:Lcom/duoku/platform/view/a/d;

    invoke-static {v0}, Lcom/duoku/platform/view/a/d;->f(Lcom/duoku/platform/view/a/d;)V

    .line 230
    return-void
.end method
