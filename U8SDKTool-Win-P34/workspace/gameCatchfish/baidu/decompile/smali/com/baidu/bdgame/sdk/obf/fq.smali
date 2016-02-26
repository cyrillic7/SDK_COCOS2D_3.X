.class public Lcom/baidu/bdgame/sdk/obf/fq;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lcom/baidu/bdgame/sdk/obf/fp;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/fq;->a:Landroid/app/Activity;

    .line 23
    return-void
.end method

.method private a(Lcom/baidu/bdgame/sdk/obf/ig;Lcom/baidu/bdgame/sdk/obf/gp;Lcom/baidu/bdgame/sdk/obf/gn;)V
    .registers 6

    .prologue
    .line 30
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fq;->b:Lcom/baidu/bdgame/sdk/obf/fp;

    if-nez v0, :cond_d

    .line 31
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/fp;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fq;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/baidu/bdgame/sdk/obf/fp;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fq;->b:Lcom/baidu/bdgame/sdk/obf/fp;

    .line 33
    :cond_d
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fq;->b:Lcom/baidu/bdgame/sdk/obf/fp;

    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/fp;->a(Lcom/baidu/bdgame/sdk/obf/ig;Lcom/baidu/bdgame/sdk/obf/gp;Lcom/baidu/bdgame/sdk/obf/gn;)V

    .line 34
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fq;->b:Lcom/baidu/bdgame/sdk/obf/fp;

    if-eqz v0, :cond_9

    .line 75
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fq;->b:Lcom/baidu/bdgame/sdk/obf/fp;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/fp;->show()V

    .line 77
    :cond_9
    return-void
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/ig;)V
    .registers 4

    .prologue
    .line 43
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fq;->a:Landroid/app/Activity;

    const-string v1, "bdp_paycenter_tips_verifycode_send_success"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/jf;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fq;->b:Lcom/baidu/bdgame/sdk/obf/fp;

    if-eqz v0, :cond_10

    .line 46
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fq;->b:Lcom/baidu/bdgame/sdk/obf/fp;

    invoke-virtual {v0, p1}, Lcom/baidu/bdgame/sdk/obf/fp;->a(Lcom/baidu/bdgame/sdk/obf/ig;)V

    .line 48
    :cond_10
    return-void
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/ig;Lcom/baidu/bdgame/sdk/obf/gp;Lcom/baidu/bdgame/sdk/obf/gn;Lcom/baidu/bdgame/sdk/obf/go;)V
    .registers 6

    .prologue
    .line 90
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/fq;->a(Lcom/baidu/bdgame/sdk/obf/ig;Lcom/baidu/bdgame/sdk/obf/gp;Lcom/baidu/bdgame/sdk/obf/gn;)V

    .line 91
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fq;->b:Lcom/baidu/bdgame/sdk/obf/fp;

    invoke-virtual {v0, p4}, Lcom/baidu/bdgame/sdk/obf/fp;->a(Lcom/baidu/bdgame/sdk/obf/go;)V

    .line 92
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fq;->b:Lcom/baidu/bdgame/sdk/obf/fp;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/fp;->c()V

    .line 93
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fq;->b:Lcom/baidu/bdgame/sdk/obf/fp;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/fp;->b()V

    .line 94
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fq;->b:Lcom/baidu/bdgame/sdk/obf/fp;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/fp;->show()V

    .line 95
    return-void
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/ig;Ljava/lang/String;ILcom/baidu/bdgame/sdk/obf/gp;Lcom/baidu/bdgame/sdk/obf/gn;Lcom/baidu/bdgame/sdk/obf/go;)V
    .registers 8

    .prologue
    .line 110
    invoke-direct {p0, p1, p4, p5}, Lcom/baidu/bdgame/sdk/obf/fq;->a(Lcom/baidu/bdgame/sdk/obf/ig;Lcom/baidu/bdgame/sdk/obf/gp;Lcom/baidu/bdgame/sdk/obf/gn;)V

    .line 111
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fq;->b:Lcom/baidu/bdgame/sdk/obf/fp;

    invoke-virtual {v0, p6}, Lcom/baidu/bdgame/sdk/obf/fp;->a(Lcom/baidu/bdgame/sdk/obf/go;)V

    .line 112
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fq;->b:Lcom/baidu/bdgame/sdk/obf/fp;

    invoke-virtual {v0, p2, p3}, Lcom/baidu/bdgame/sdk/obf/fp;->a(Ljava/lang/String;I)V

    .line 113
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fq;->b:Lcom/baidu/bdgame/sdk/obf/fp;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/fp;->show()V

    .line 114
    return-void
.end method

.method public b(Lcom/baidu/bdgame/sdk/obf/ig;)V
    .registers 4

    .prologue
    .line 57
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fq;->a:Landroid/app/Activity;

    const-string v1, "bdp_paycenter_tips_verifycode_send_fail"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/jf;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/fq;->c(Lcom/baidu/bdgame/sdk/obf/ig;)V

    .line 60
    return-void
.end method

.method public c(Lcom/baidu/bdgame/sdk/obf/ig;)V
    .registers 3

    .prologue
    .line 68
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fq;->b:Lcom/baidu/bdgame/sdk/obf/fp;

    if-eqz v0, :cond_9

    .line 69
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fq;->b:Lcom/baidu/bdgame/sdk/obf/fp;

    invoke-virtual {v0, p1}, Lcom/baidu/bdgame/sdk/obf/fp;->b(Lcom/baidu/bdgame/sdk/obf/ig;)V

    .line 71
    :cond_9
    return-void
.end method
