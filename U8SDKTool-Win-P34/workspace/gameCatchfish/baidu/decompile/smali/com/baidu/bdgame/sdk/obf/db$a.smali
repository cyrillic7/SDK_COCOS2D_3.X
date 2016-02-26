.class Lcom/baidu/bdgame/sdk/obf/db$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bdgame/sdk/obf/db;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/db;

.field private b:Lcom/baidu/bdgame/sdk/obf/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/baidu/bdgame/sdk/obf/n",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/da;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/db;Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/n;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/n",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/da;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/db$a;->a:Lcom/baidu/bdgame/sdk/obf/db;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p3, p0, Lcom/baidu/bdgame/sdk/obf/db$a;->b:Lcom/baidu/bdgame/sdk/obf/n;

    .line 49
    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/db$a;->c:Landroid/content/Context;

    .line 50
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 54
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/db$a;->a:Lcom/baidu/bdgame/sdk/obf/db;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/db$a;->c:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/db;->a(Lcom/baidu/bdgame/sdk/obf/db;Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    .line 55
    if-nez v0, :cond_12

    .line 57
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/db$a;->b:Lcom/baidu/bdgame/sdk/obf/n;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v2, v2}, Lcom/baidu/bdgame/sdk/obf/n;->a(ILjava/lang/String;Ljava/lang/Object;)V

    .line 61
    :goto_11
    return-void

    .line 59
    :cond_12
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/db$a;->a:Lcom/baidu/bdgame/sdk/obf/db;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/db$a;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/db$a;->b:Lcom/baidu/bdgame/sdk/obf/n;

    invoke-static {v1, v0, v2, v3}, Lcom/baidu/bdgame/sdk/obf/db;->a(Lcom/baidu/bdgame/sdk/obf/db;Lorg/json/JSONObject;Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/n;)V

    goto :goto_11
.end method
