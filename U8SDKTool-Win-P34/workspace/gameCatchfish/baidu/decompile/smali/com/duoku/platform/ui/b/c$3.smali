.class Lcom/duoku/platform/ui/b/c$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/ui/b/c;->a(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/ui/b/c;

.field private final synthetic b:Landroid/content/Context;

.field private final synthetic c:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/duoku/platform/ui/b/c;Landroid/content/Context;Landroid/app/Dialog;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/ui/b/c$3;->a:Lcom/duoku/platform/ui/b/c;

    iput-object p2, p0, Lcom/duoku/platform/ui/b/c$3;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/duoku/platform/ui/b/c$3;->c:Landroid/app/Dialog;

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 1006
    iget-object v0, p0, Lcom/duoku/platform/ui/b/c$3;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/util/o;->a(Landroid/content/Context;)Lcom/duoku/platform/util/o;

    move-result-object v0

    const-string v1, "dk_actionanno_time"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/util/o;->e(Ljava/lang/String;)Z

    .line 1007
    iget-object v0, p0, Lcom/duoku/platform/ui/b/c$3;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/util/o;->a(Landroid/content/Context;)Lcom/duoku/platform/util/o;

    move-result-object v0

    const-string v1, "dk_actionanno_title"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/util/o;->e(Ljava/lang/String;)Z

    .line 1008
    iget-object v0, p0, Lcom/duoku/platform/ui/b/c$3;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/util/o;->a(Landroid/content/Context;)Lcom/duoku/platform/util/o;

    move-result-object v0

    const-string v1, "dk_actionanno_content"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/util/o;->e(Ljava/lang/String;)Z

    .line 1009
    iget-object v0, p0, Lcom/duoku/platform/ui/b/c$3;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/util/o;->a(Landroid/content/Context;)Lcom/duoku/platform/util/o;

    move-result-object v0

    const-string v1, "dk_actionanno_link"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/util/o;->e(Ljava/lang/String;)Z

    .line 1010
    iget-object v0, p0, Lcom/duoku/platform/ui/b/c$3;->c:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1011
    return-void
.end method
