.class Lcom/duoku/platform/view/user/d$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/view/user/d;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/view/user/d;


# direct methods
.method constructor <init>(Lcom/duoku/platform/view/user/d;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/view/user/d$7;->a:Lcom/duoku/platform/view/user/d;

    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 312
    iget-object v0, p0, Lcom/duoku/platform/view/user/d$7;->a:Lcom/duoku/platform/view/user/d;

    invoke-static {v0}, Lcom/duoku/platform/view/user/d;->d(Lcom/duoku/platform/view/user/d;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 313
    iget-object v0, p0, Lcom/duoku/platform/view/user/d$7;->a:Lcom/duoku/platform/view/user/d;

    invoke-static {v0}, Lcom/duoku/platform/view/user/d;->t(Lcom/duoku/platform/view/user/d;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 314
    iget-object v0, p0, Lcom/duoku/platform/view/user/d$7;->a:Lcom/duoku/platform/view/user/d;

    invoke-static {v0}, Lcom/duoku/platform/view/user/d;->s(Lcom/duoku/platform/view/user/d;)V

    .line 315
    return-void
.end method
