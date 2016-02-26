.class final Lcom/tencent/map/b/f$a;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/map/b/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/tencent/map/b/e$b;

.field private b:Lcom/tencent/map/b/d$b;

.field private c:Lcom/tencent/map/b/g$b;

.field private synthetic d:Lcom/tencent/map/b/f;


# direct methods
.method constructor <init>(Lcom/tencent/map/b/f;Lcom/tencent/map/b/e$b;Lcom/tencent/map/b/d$b;Lcom/tencent/map/b/g$b;)V
    .registers 6

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/tencent/map/b/f$a;->d:Lcom/tencent/map/b/f;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object v0, p0, Lcom/tencent/map/b/f$a;->a:Lcom/tencent/map/b/e$b;

    iput-object v0, p0, Lcom/tencent/map/b/f$a;->b:Lcom/tencent/map/b/d$b;

    iput-object v0, p0, Lcom/tencent/map/b/f$a;->c:Lcom/tencent/map/b/g$b;

    if-eqz p2, :cond_16

    invoke-virtual {p2}, Lcom/tencent/map/b/e$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/map/b/e$b;

    iput-object v0, p0, Lcom/tencent/map/b/f$a;->a:Lcom/tencent/map/b/e$b;

    :cond_16
    if-eqz p3, :cond_20

    invoke-virtual {p3}, Lcom/tencent/map/b/d$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/map/b/d$b;

    iput-object v0, p0, Lcom/tencent/map/b/f$a;->b:Lcom/tencent/map/b/d$b;

    :cond_20
    if-eqz p4, :cond_2a

    invoke-virtual {p4}, Lcom/tencent/map/b/g$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/map/b/g$b;

    iput-object v0, p0, Lcom/tencent/map/b/f$a;->c:Lcom/tencent/map/b/g$b;

    :cond_2a
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    invoke-static {}, Lcom/tencent/map/b/f;->c()Z

    move-result v0

    if-nez v0, :cond_103

    :try_start_6
    iget-object v0, p0, Lcom/tencent/map/b/f$a;->d:Lcom/tencent/map/b/f;

    invoke-static {v0}, Lcom/tencent/map/b/f;->k(Lcom/tencent/map/b/f;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/tencent/map/b/f$a;->d:Lcom/tencent/map/b/f;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/map/b/f;->c(Lcom/tencent/map/b/f;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/map/b/f$a;->d:Lcom/tencent/map/b/f;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/map/b/f;->d(Lcom/tencent/map/b/f;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/map/b/f$a;->d:Lcom/tencent/map/b/f;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/map/b/f;->e(Lcom/tencent/map/b/f;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "[0-9a-zA-Z+-]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/map/b/f$a;->d:Lcom/tencent/map/b/f;

    iget-object v0, p0, Lcom/tencent/map/b/f$a;->d:Lcom/tencent/map/b/f;

    invoke-static {v0}, Lcom/tencent/map/b/f;->l(Lcom/tencent/map/b/f;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1f5

    const-string v0, ""

    :goto_41
    invoke-static {v2, v0}, Lcom/tencent/map/b/f;->c(Lcom/tencent/map/b/f;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/map/b/f$a;->d:Lcom/tencent/map/b/f;

    invoke-static {v0}, Lcom/tencent/map/b/f;->l(Lcom/tencent/map/b/f;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_205

    iget-object v2, p0, Lcom/tencent/map/b/f$a;->d:Lcom/tencent/map/b/f;

    iget-object v0, p0, Lcom/tencent/map/b/f$a;->d:Lcom/tencent/map/b/f;

    invoke-static {v0}, Lcom/tencent/map/b/f;->l(Lcom/tencent/map/b/f;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1fd

    const-string v0, ""

    :goto_60
    invoke-static {v2, v0}, Lcom/tencent/map/b/f;->c(Lcom/tencent/map/b/f;Ljava/lang/String;)Ljava/lang/String;

    :goto_63
    iget-object v2, p0, Lcom/tencent/map/b/f$a;->d:Lcom/tencent/map/b/f;

    iget-object v0, p0, Lcom/tencent/map/b/f$a;->d:Lcom/tencent/map/b/f;

    invoke-static {v0}, Lcom/tencent/map/b/f;->m(Lcom/tencent/map/b/f;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_211

    const-string v0, ""

    :goto_6f
    invoke-static {v2, v0}, Lcom/tencent/map/b/f;->d(Lcom/tencent/map/b/f;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/map/b/f$a;->d:Lcom/tencent/map/b/f;

    invoke-static {v0}, Lcom/tencent/map/b/f;->m(Lcom/tencent/map/b/f;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_221

    iget-object v2, p0, Lcom/tencent/map/b/f$a;->d:Lcom/tencent/map/b/f;

    iget-object v0, p0, Lcom/tencent/map/b/f$a;->d:Lcom/tencent/map/b/f;

    invoke-static {v0}, Lcom/tencent/map/b/f;->m(Lcom/tencent/map/b/f;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_219

    const-string v0, ""

    :goto_8e
    invoke-static {v2, v0}, Lcom/tencent/map/b/f;->d(Lcom/tencent/map/b/f;Ljava/lang/String;)Ljava/lang/String;

    :goto_91
    iget-object v2, p0, Lcom/tencent/map/b/f$a;->d:Lcom/tencent/map/b/f;

    iget-object v0, p0, Lcom/tencent/map/b/f$a;->d:Lcom/tencent/map/b/f;

    invoke-static {v0}, Lcom/tencent/map/b/f;->n(Lcom/tencent/map/b/f;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_22a

    const-string v0, ""

    :goto_9d
    invoke-static {v2, v0}, Lcom/tencent/map/b/f;->e(Lcom/tencent/map/b/f;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/map/b/f$a;->d:Lcom/tencent/map/b/f;

    invoke-static {v0}, Lcom/tencent/map/b/f;->n(Lcom/tencent/map/b/f;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_23a

    iget-object v1, p0, Lcom/tencent/map/b/f$a;->d:Lcom/tencent/map/b/f;

    iget-object v0, p0, Lcom/tencent/map/b/f$a;->d:Lcom/tencent/map/b/f;

    invoke-static {v0}, Lcom/tencent/map/b/f;->n(Lcom/tencent/map/b/f;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_232

    const-string v0, ""

    :goto_bc
    invoke-static {v1, v0}, Lcom/tencent/map/b/f;->e(Lcom/tencent/map/b/f;Ljava/lang/String;)Ljava/lang/String;
    :try_end_bf
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_bf} :catch_20e

    :goto_bf
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/tencent/map/b/f;->a(Z)Z

    iget-object v1, p0, Lcom/tencent/map/b/f$a;->d:Lcom/tencent/map/b/f;

    iget-object v0, p0, Lcom/tencent/map/b/f$a;->d:Lcom/tencent/map/b/f;

    invoke-static {v0}, Lcom/tencent/map/b/f;->l(Lcom/tencent/map/b/f;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_243

    const-string v0, ""

    :goto_cf
    invoke-static {v1, v0}, Lcom/tencent/map/b/f;->c(Lcom/tencent/map/b/f;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/map/b/f$a;->d:Lcom/tencent/map/b/f;

    iget-object v0, p0, Lcom/tencent/map/b/f$a;->d:Lcom/tencent/map/b/f;

    invoke-static {v0}, Lcom/tencent/map/b/f;->m(Lcom/tencent/map/b/f;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_24b

    const-string v0, ""

    :goto_de
    invoke-static {v1, v0}, Lcom/tencent/map/b/f;->d(Lcom/tencent/map/b/f;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/map/b/f$a;->d:Lcom/tencent/map/b/f;

    iget-object v0, p0, Lcom/tencent/map/b/f$a;->d:Lcom/tencent/map/b/f;

    invoke-static {v0}, Lcom/tencent/map/b/f;->n(Lcom/tencent/map/b/f;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_253

    const-string v0, ""

    :goto_ed
    invoke-static {v1, v0}, Lcom/tencent/map/b/f;->e(Lcom/tencent/map/b/f;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/map/b/f$a;->d:Lcom/tencent/map/b/f;

    iget-object v0, p0, Lcom/tencent/map/b/f$a;->d:Lcom/tencent/map/b/f;

    invoke-static {v0}, Lcom/tencent/map/b/f;->l(Lcom/tencent/map/b/f;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_25b

    const-string v0, "0123456789ABCDEF"

    :goto_fc
    invoke-static {v0}, Lcom/tencent/map/b/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/map/b/f;->f(Lcom/tencent/map/b/f;Ljava/lang/String;)Ljava/lang/String;

    :cond_103
    iget-object v0, p0, Lcom/tencent/map/b/f$a;->d:Lcom/tencent/map/b/f;

    invoke-static {v0}, Lcom/tencent/map/b/f;->o(Lcom/tencent/map/b/f;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_263

    iget-object v0, p0, Lcom/tencent/map/b/f$a;->c:Lcom/tencent/map/b/g$b;

    invoke-static {v0}, Lcom/tencent/map/b/i;->a(Lcom/tencent/map/b/g$b;)Ljava/lang/String;

    move-result-object v0

    :goto_112
    iget-object v1, p0, Lcom/tencent/map/b/f$a;->b:Lcom/tencent/map/b/d$b;

    iget-object v2, p0, Lcom/tencent/map/b/f$a;->d:Lcom/tencent/map/b/f;

    invoke-static {v2}, Lcom/tencent/map/b/f;->p(Lcom/tencent/map/b/f;)Lcom/tencent/map/b/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/map/b/d;->b()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/map/b/i;->a(Lcom/tencent/map/b/d$b;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/tencent/map/b/f$a;->d:Lcom/tencent/map/b/f;

    invoke-static {v1}, Lcom/tencent/map/b/f;->l(Lcom/tencent/map/b/f;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/tencent/map/b/f$a;->d:Lcom/tencent/map/b/f;

    invoke-static {v3}, Lcom/tencent/map/b/f;->m(Lcom/tencent/map/b/f;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/map/b/f$a;->d:Lcom/tencent/map/b/f;

    invoke-static {v4}, Lcom/tencent/map/b/f;->n(Lcom/tencent/map/b/f;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/map/b/f$a;->d:Lcom/tencent/map/b/f;

    invoke-static {v5}, Lcom/tencent/map/b/f;->q(Lcom/tencent/map/b/f;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/tencent/map/b/f$a;->d:Lcom/tencent/map/b/f;

    invoke-static {v6}, Lcom/tencent/map/b/f;->r(Lcom/tencent/map/b/f;)Z

    move-result v6

    invoke-static {v1, v3, v4, v5, v6}, Lcom/tencent/map/b/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/tencent/map/b/f$a;->a:Lcom/tencent/map/b/e$b;

    if-eqz v1, :cond_267

    iget-object v1, p0, Lcom/tencent/map/b/f$a;->a:Lcom/tencent/map/b/e$b;

    invoke-virtual {v1}, Lcom/tencent/map/b/e$b;->a()Z

    move-result v1

    if-eqz v1, :cond_267

    iget-object v1, p0, Lcom/tencent/map/b/f$a;->a:Lcom/tencent/map/b/e$b;

    invoke-static {v1}, Lcom/tencent/map/b/i;->a(Lcom/tencent/map/b/e$b;)Ljava/lang/String;

    move-result-object v1

    :goto_156
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "{\"version\":\"1.1.8\",\"address\":"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/tencent/map/b/f$a;->d:Lcom/tencent/map/b/f;

    invoke-static {v5}, Lcom/tencent/map/b/f;->s(Lcom/tencent/map/b/f;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",\"source\":203,\"access_token\":\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/map/b/f$a;->d:Lcom/tencent/map/b/f;

    invoke-static {v5}, Lcom/tencent/map/b/f;->t(Lcom/tencent/map/b/f;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\",\"app_name\":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/map/b/f$a;->d:Lcom/tencent/map/b/f;

    invoke-static {v5}, Lcom/tencent/map/b/f;->u(Lcom/tencent/map/b/f;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\",\"bearing\":1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",\"attribute\":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",\"location\":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ",\"cells\":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",\"wifis\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/map/b/f$a;->d:Lcom/tencent/map/b/f;

    invoke-static {v1}, Lcom/tencent/map/b/f;->d(Lcom/tencent/map/b/f;)Lcom/tencent/map/b/f$c;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2, v0}, Lcom/tencent/map/b/f$c;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/map/b/f$a;->d:Lcom/tencent/map/b/f;

    invoke-static {v1}, Lcom/tencent/map/b/f;->d(Lcom/tencent/map/b/f;)Lcom/tencent/map/b/f$c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/map/b/f$c;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_1f5
    :try_start_1f5
    iget-object v0, p0, Lcom/tencent/map/b/f$a;->d:Lcom/tencent/map/b/f;

    invoke-static {v0}, Lcom/tencent/map/b/f;->l(Lcom/tencent/map/b/f;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_41

    :cond_1fd
    iget-object v0, p0, Lcom/tencent/map/b/f$a;->d:Lcom/tencent/map/b/f;

    invoke-static {v0}, Lcom/tencent/map/b/f;->l(Lcom/tencent/map/b/f;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_60

    :cond_205
    iget-object v0, p0, Lcom/tencent/map/b/f$a;->d:Lcom/tencent/map/b/f;

    const-string v2, ""

    invoke-static {v0, v2}, Lcom/tencent/map/b/f;->c(Lcom/tencent/map/b/f;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_63

    :catch_20e
    move-exception v0

    goto/16 :goto_bf

    :cond_211
    iget-object v0, p0, Lcom/tencent/map/b/f$a;->d:Lcom/tencent/map/b/f;

    invoke-static {v0}, Lcom/tencent/map/b/f;->m(Lcom/tencent/map/b/f;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6f

    :cond_219
    iget-object v0, p0, Lcom/tencent/map/b/f$a;->d:Lcom/tencent/map/b/f;

    invoke-static {v0}, Lcom/tencent/map/b/f;->m(Lcom/tencent/map/b/f;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_8e

    :cond_221
    iget-object v0, p0, Lcom/tencent/map/b/f$a;->d:Lcom/tencent/map/b/f;

    const-string v2, ""

    invoke-static {v0, v2}, Lcom/tencent/map/b/f;->d(Lcom/tencent/map/b/f;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_91

    :cond_22a
    iget-object v0, p0, Lcom/tencent/map/b/f$a;->d:Lcom/tencent/map/b/f;

    invoke-static {v0}, Lcom/tencent/map/b/f;->n(Lcom/tencent/map/b/f;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9d

    :cond_232
    iget-object v0, p0, Lcom/tencent/map/b/f$a;->d:Lcom/tencent/map/b/f;

    invoke-static {v0}, Lcom/tencent/map/b/f;->n(Lcom/tencent/map/b/f;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_bc

    :cond_23a
    iget-object v0, p0, Lcom/tencent/map/b/f$a;->d:Lcom/tencent/map/b/f;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/tencent/map/b/f;->e(Lcom/tencent/map/b/f;Ljava/lang/String;)Ljava/lang/String;
    :try_end_241
    .catch Ljava/lang/Exception; {:try_start_1f5 .. :try_end_241} :catch_20e

    goto/16 :goto_bf

    :cond_243
    iget-object v0, p0, Lcom/tencent/map/b/f$a;->d:Lcom/tencent/map/b/f;

    invoke-static {v0}, Lcom/tencent/map/b/f;->l(Lcom/tencent/map/b/f;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_cf

    :cond_24b
    iget-object v0, p0, Lcom/tencent/map/b/f$a;->d:Lcom/tencent/map/b/f;

    invoke-static {v0}, Lcom/tencent/map/b/f;->m(Lcom/tencent/map/b/f;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_de

    :cond_253
    iget-object v0, p0, Lcom/tencent/map/b/f$a;->d:Lcom/tencent/map/b/f;

    invoke-static {v0}, Lcom/tencent/map/b/f;->n(Lcom/tencent/map/b/f;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_ed

    :cond_25b
    iget-object v0, p0, Lcom/tencent/map/b/f$a;->d:Lcom/tencent/map/b/f;

    invoke-static {v0}, Lcom/tencent/map/b/f;->l(Lcom/tencent/map/b/f;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_fc

    :cond_263
    const-string v0, "[]"

    goto/16 :goto_112

    :cond_267
    const-string v1, "{}"

    goto/16 :goto_156
.end method
