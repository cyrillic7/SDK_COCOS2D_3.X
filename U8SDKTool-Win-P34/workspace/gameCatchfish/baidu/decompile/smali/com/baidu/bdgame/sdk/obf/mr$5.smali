.class final Lcom/baidu/bdgame/sdk/obf/mr$5;
.super Lcom/baidu/bdgame/sdk/obf/bi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/mr;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/baidu/bdgame/sdk/obf/mr;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/mr;Landroid/content/Context;I)V
    .registers 4

    .prologue
    .line 173
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/mr$5;->b:Lcom/baidu/bdgame/sdk/obf/mr;

    iput p3, p0, Lcom/baidu/bdgame/sdk/obf/mr$5;->a:I

    invoke-direct {p0, p2}, Lcom/baidu/bdgame/sdk/obf/bi;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 184
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mr$5;->b:Lcom/baidu/bdgame/sdk/obf/mr;

    iget v1, p0, Lcom/baidu/bdgame/sdk/obf/mr$5;->a:I

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/mr;->c(Lcom/baidu/bdgame/sdk/obf/mr;I)V

    .line 185
    return-void
.end method

.method protected a(Landroid/content/Context;ILjava/lang/String;)V
    .registers 5

    .prologue
    .line 178
    invoke-static {p1, p3}, Lcom/baidu/bdgame/sdk/obf/ln;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mr$5;->b:Lcom/baidu/bdgame/sdk/obf/mr;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/mr;->b(Lcom/baidu/bdgame/sdk/obf/mr;)Lcom/baidu/bdgame/sdk/obf/ms;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ms;->m()V

    .line 180
    return-void
.end method
