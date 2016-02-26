.class Lcom/duoku/platform/view/d$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/duoku/platform/g/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/view/d;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public a(IIILjava/lang/String;)V
    .registers 8

    .prologue
    .line 169
    const-string v0, "error"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "error"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    return-void
.end method

.method public a(ILcom/duoku/platform/h/a;I)V
    .registers 8

    .prologue
    .line 142
    check-cast p2, Lcom/duoku/platform/bean/b;

    .line 143
    if-eqz p2, :cond_23

    .line 145
    sget-object v0, Lcom/duoku/platform/util/q;->a:Ljava/lang/String;

    sget-object v1, Lcom/duoku/platform/util/q;->e:Ljava/lang/String;

    invoke-static {v0, v1, p2}, Lcom/duoku/platform/util/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 146
    invoke-virtual {p2}, Lcom/duoku/platform/bean/b;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 148
    new-instance v0, Lcom/duoku/platform/view/d$a;

    invoke-direct {v0}, Lcom/duoku/platform/view/d$a;-><init>()V

    .line 149
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p2}, Lcom/duoku/platform/bean/b;->b()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/duoku/platform/view/d$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 152
    :cond_23
    return-void
.end method

.method public a(JJI)V
    .registers 6

    .prologue
    .line 164
    return-void
.end method

.method public a(Lcom/duoku/platform/g/f$a;I)V
    .registers 3

    .prologue
    .line 158
    return-void
.end method
