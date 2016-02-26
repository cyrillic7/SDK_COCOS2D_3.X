.class Lcom/duoku/platform/view/user/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/view/user/a;->x()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/view/user/a;


# direct methods
.method constructor <init>(Lcom/duoku/platform/view/user/a;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/view/user/a$2;->a:Lcom/duoku/platform/view/user/a;

    .line 915
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .registers 6

    .prologue
    .line 921
    if-eqz p2, :cond_17

    .line 923
    iget-object v0, p0, Lcom/duoku/platform/view/user/a$2;->a:Lcom/duoku/platform/view/user/a;

    invoke-static {v0}, Lcom/duoku/platform/view/user/a;->t(Lcom/duoku/platform/view/user/a;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/view/user/a$2;->a:Lcom/duoku/platform/view/user/a;

    invoke-static {v1}, Lcom/duoku/platform/view/user/a;->d(Lcom/duoku/platform/view/user/a;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "dk_edittext_selector"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 925
    :cond_17
    return-void
.end method
