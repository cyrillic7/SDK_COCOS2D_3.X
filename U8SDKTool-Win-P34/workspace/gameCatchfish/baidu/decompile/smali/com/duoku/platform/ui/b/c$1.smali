.class Lcom/duoku/platform/ui/b/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/ui/b/c;->a(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/ui/b/c;

.field private final synthetic b:Z

.field private final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/duoku/platform/ui/b/c;ZLjava/lang/String;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/ui/b/c$1;->a:Lcom/duoku/platform/ui/b/c;

    iput-boolean p2, p0, Lcom/duoku/platform/ui/b/c$1;->b:Z

    iput-object p3, p0, Lcom/duoku/platform/ui/b/c$1;->c:Ljava/lang/String;

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/duoku/platform/ui/b/c$1;->a:Lcom/duoku/platform/ui/b/c;

    new-instance v1, Lcom/duoku/platform/e/a;

    iget-object v2, p0, Lcom/duoku/platform/ui/b/c$1;->a:Lcom/duoku/platform/ui/b/c;

    invoke-static {v2}, Lcom/duoku/platform/ui/b/c;->a(Lcom/duoku/platform/ui/b/c;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/duoku/platform/e/a;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/duoku/platform/ui/b/c;->a:Lcom/duoku/platform/e/a;

    .line 121
    iget-object v0, p0, Lcom/duoku/platform/ui/b/c$1;->a:Lcom/duoku/platform/ui/b/c;

    iget-object v0, v0, Lcom/duoku/platform/ui/b/c;->a:Lcom/duoku/platform/e/a;

    iget-boolean v1, p0, Lcom/duoku/platform/ui/b/c$1;->b:Z

    invoke-virtual {v0, v1}, Lcom/duoku/platform/e/a;->setCancelable(Z)V

    .line 122
    iget-object v0, p0, Lcom/duoku/platform/ui/b/c$1;->a:Lcom/duoku/platform/ui/b/c;

    iget-object v0, v0, Lcom/duoku/platform/ui/b/c;->a:Lcom/duoku/platform/e/a;

    iget-object v1, p0, Lcom/duoku/platform/ui/b/c$1;->a:Lcom/duoku/platform/ui/b/c;

    iget-object v1, v1, Lcom/duoku/platform/ui/b/c;->c:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/e/a;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 123
    iget-object v0, p0, Lcom/duoku/platform/ui/b/c$1;->a:Lcom/duoku/platform/ui/b/c;

    iget-object v0, v0, Lcom/duoku/platform/ui/b/c;->a:Lcom/duoku/platform/e/a;

    iget-object v1, p0, Lcom/duoku/platform/ui/b/c$1;->a:Lcom/duoku/platform/ui/b/c;

    iget-object v1, v1, Lcom/duoku/platform/ui/b/c;->b:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/e/a;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 124
    iget-object v0, p0, Lcom/duoku/platform/ui/b/c$1;->a:Lcom/duoku/platform/ui/b/c;

    iget-object v0, v0, Lcom/duoku/platform/ui/b/c;->a:Lcom/duoku/platform/e/a;

    iget-object v1, p0, Lcom/duoku/platform/ui/b/c$1;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/e/a;->a(Ljava/lang/String;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_37} :catch_38

    .line 130
    :goto_37
    return-void

    .line 126
    :catch_38
    move-exception v0

    .line 128
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_37
.end method
