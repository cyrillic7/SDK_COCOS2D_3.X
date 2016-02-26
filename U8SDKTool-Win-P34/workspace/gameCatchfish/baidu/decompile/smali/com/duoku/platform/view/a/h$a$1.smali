.class Lcom/duoku/platform/view/a/h$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/duoku/platform/ui/b/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/view/a/h$a;->a(IIILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/view/a/h$a;


# direct methods
.method constructor <init>(Lcom/duoku/platform/view/a/h$a;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/view/a/h$a$1;->a:Lcom/duoku/platform/view/a/h$a;

    .line 405
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 412
    iget-object v0, p0, Lcom/duoku/platform/view/a/h$a$1;->a:Lcom/duoku/platform/view/a/h$a;

    invoke-static {v0}, Lcom/duoku/platform/view/a/h$a;->a(Lcom/duoku/platform/view/a/h$a;)Lcom/duoku/platform/view/a/h;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/view/a/h;->g(Lcom/duoku/platform/view/a/h;)V

    .line 413
    return-void
.end method
