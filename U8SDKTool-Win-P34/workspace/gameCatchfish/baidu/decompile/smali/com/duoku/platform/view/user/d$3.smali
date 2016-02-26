.class Lcom/duoku/platform/view/user/d$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/view/user/d;->a()V
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
    iput-object p1, p0, Lcom/duoku/platform/view/user/d$3;->a:Lcom/duoku/platform/view/user/d;

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8

    .prologue
    .line 152
    new-instance v0, Lcom/duoku/platform/view/user/c;

    iget-object v1, p0, Lcom/duoku/platform/view/user/d$3;->a:Lcom/duoku/platform/view/user/d;

    invoke-static {v1}, Lcom/duoku/platform/view/user/d;->a(Lcom/duoku/platform/view/user/d;)Lcom/duoku/platform/view/user/a;

    move-result-object v1

    iget-object v2, p0, Lcom/duoku/platform/view/user/d$3;->a:Lcom/duoku/platform/view/user/d;

    invoke-static {v2}, Lcom/duoku/platform/view/user/d;->o(Lcom/duoku/platform/view/user/d;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/duoku/platform/view/user/d$3;->a:Lcom/duoku/platform/view/user/d;

    invoke-static {v4}, Lcom/duoku/platform/view/user/d;->p(Lcom/duoku/platform/view/user/d;)Lcom/duoku/a/a/a/a/a;

    move-result-object v4

    iget-object v5, p0, Lcom/duoku/platform/view/user/d$3;->a:Lcom/duoku/platform/view/user/d;

    invoke-static {v5}, Lcom/duoku/platform/view/user/d;->q(Lcom/duoku/platform/view/user/d;)Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/duoku/platform/view/user/c;-><init>(Lcom/duoku/platform/view/user/a;Landroid/content/Context;ILcom/duoku/a/a/a/a/a;Ljava/lang/String;)V

    .line 153
    return-void
.end method
