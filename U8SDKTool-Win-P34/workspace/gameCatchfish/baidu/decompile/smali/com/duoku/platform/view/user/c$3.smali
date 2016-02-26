.class Lcom/duoku/platform/view/user/c$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/view/user/c;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/view/user/c;


# direct methods
.method constructor <init>(Lcom/duoku/platform/view/user/c;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/view/user/c$3;->a:Lcom/duoku/platform/view/user/c;

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 248
    new-instance v0, Lcom/duoku/platform/view/user/f;

    iget-object v1, p0, Lcom/duoku/platform/view/user/c$3;->a:Lcom/duoku/platform/view/user/c;

    invoke-static {v1}, Lcom/duoku/platform/view/user/c;->a(Lcom/duoku/platform/view/user/c;)Lcom/duoku/platform/view/user/a;

    move-result-object v1

    iget-object v2, p0, Lcom/duoku/platform/view/user/c$3;->a:Lcom/duoku/platform/view/user/c;

    invoke-static {v2}, Lcom/duoku/platform/view/user/c;->i(Lcom/duoku/platform/view/user/c;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/duoku/platform/view/user/f;-><init>(Lcom/duoku/platform/view/user/a;Landroid/content/Context;I)V

    .line 249
    return-void
.end method
