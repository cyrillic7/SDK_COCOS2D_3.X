.class final Lcom/baidu/bdgame/sdk/obf/kb$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/kb$a;->b(ILjava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/Object;

.field final synthetic d:Lcom/baidu/bdgame/sdk/obf/kb$a;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/kb$a;ILjava/lang/String;Ljava/lang/Object;)V
    .registers 5

    .prologue
    .line 338
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/kb$a$1;->d:Lcom/baidu/bdgame/sdk/obf/kb$a;

    iput p2, p0, Lcom/baidu/bdgame/sdk/obf/kb$a$1;->a:I

    iput-object p3, p0, Lcom/baidu/bdgame/sdk/obf/kb$a$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/baidu/bdgame/sdk/obf/kb$a$1;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 342
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kb$a$1;->d:Lcom/baidu/bdgame/sdk/obf/kb$a;

    iget v1, p0, Lcom/baidu/bdgame/sdk/obf/kb$a$1;->a:I

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/kb$a$1;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/kb$a$1;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/bdgame/sdk/obf/kb$a;->a(ILjava/lang/String;Ljava/lang/Object;)V

    .line 343
    return-void
.end method
