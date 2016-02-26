.class Lcom/duoku/platform/view/user/f$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/view/user/f;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/view/user/f;


# direct methods
.method constructor <init>(Lcom/duoku/platform/view/user/f;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/view/user/f$2;->a:Lcom/duoku/platform/view/user/f;

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 216
    iget-object v0, p0, Lcom/duoku/platform/view/user/f$2;->a:Lcom/duoku/platform/view/user/f;

    invoke-static {v0}, Lcom/duoku/platform/view/user/f;->d(Lcom/duoku/platform/view/user/f;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 217
    iget-object v0, p0, Lcom/duoku/platform/view/user/f$2;->a:Lcom/duoku/platform/view/user/f;

    invoke-static {v0}, Lcom/duoku/platform/view/user/f;->i(Lcom/duoku/platform/view/user/f;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 218
    iget-object v0, p0, Lcom/duoku/platform/view/user/f$2;->a:Lcom/duoku/platform/view/user/f;

    invoke-static {v0}, Lcom/duoku/platform/view/user/f;->h(Lcom/duoku/platform/view/user/f;)V

    .line 219
    return-void
.end method
