.class Lcom/duoku/platform/view/a/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/view/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/view/a/b;


# direct methods
.method constructor <init>(Lcom/duoku/platform/view/a/b;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/view/a/b$1;->a:Lcom/duoku/platform/view/a/b;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 86
    const-string v0, ""

    .line 87
    iget-object v0, p0, Lcom/duoku/platform/view/a/b$1;->a:Lcom/duoku/platform/view/a/b;

    iget-object v0, v0, Lcom/duoku/platform/view/a/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/util/o;->a(Landroid/content/Context;)Lcom/duoku/platform/util/o;

    move-result-object v0

    const-string v1, "servicephonenum"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/util/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 89
    iget-object v0, p0, Lcom/duoku/platform/view/a/b$1;->a:Lcom/duoku/platform/view/a/b;

    iget-object v1, p0, Lcom/duoku/platform/view/a/b$1;->a:Lcom/duoku/platform/view/a/b;

    iget-object v1, v1, Lcom/duoku/platform/view/a/b;->a:Landroid/content/Context;

    const-string v2, "dk_custom_service_dialnum"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/view/a/b;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 91
    :cond_28
    iget-object v1, p0, Lcom/duoku/platform/view/a/b$1;->a:Lcom/duoku/platform/view/a/b;

    iget-object v1, v1, Lcom/duoku/platform/view/a/b;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/duoku/platform/util/l;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 92
    return-void
.end method
