.class Lcom/duoku/platform/view/a/d$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/view/a/d;->p()V
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
    iput-object p1, p0, Lcom/duoku/platform/view/a/d$5;->a:Lcom/duoku/platform/view/a/d;

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 258
    iget-object v0, p0, Lcom/duoku/platform/view/a/d$5;->a:Lcom/duoku/platform/view/a/d;

    invoke-static {v0}, Lcom/duoku/platform/view/a/d;->g(Lcom/duoku/platform/view/a/d;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 259
    return-void
.end method
