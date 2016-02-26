.class public Lcom/baidu/bdgame/sdk/obf/el;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bdgame/sdk/obf/el$a;
    }
.end annotation


# static fields
.field private static b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/baidu/bdgame/sdk/obf/el$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/baidu/bdgame/sdk/obf/cn;

.field private c:Lcom/baidu/bdgame/sdk/obf/ej;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/baidu/bdgame/sdk/obf/el;->b:Ljava/util/HashMap;

    .line 47
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/el;->b:Ljava/util/HashMap;

    const-string v1, "AliPay"

    new-instance v2, Lcom/baidu/bdgame/sdk/obf/el$1;

    invoke-direct {v2}, Lcom/baidu/bdgame/sdk/obf/el$1;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/el;->b:Ljava/util/HashMap;

    const-string v1, "Mo9Pay"

    new-instance v2, Lcom/baidu/bdgame/sdk/obf/el$8;

    invoke-direct {v2}, Lcom/baidu/bdgame/sdk/obf/el$8;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/el;->b:Ljava/util/HashMap;

    const-string v1, "TencentPay"

    new-instance v2, Lcom/baidu/bdgame/sdk/obf/el$9;

    invoke-direct {v2}, Lcom/baidu/bdgame/sdk/obf/el$9;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/el;->b:Ljava/util/HashMap;

    const-string v1, "RechargeCardPay"

    new-instance v2, Lcom/baidu/bdgame/sdk/obf/el$10;

    invoke-direct {v2}, Lcom/baidu/bdgame/sdk/obf/el$10;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/el;->b:Ljava/util/HashMap;

    const-string v1, "BaiduPay"

    new-instance v2, Lcom/baidu/bdgame/sdk/obf/el$11;

    invoke-direct {v2}, Lcom/baidu/bdgame/sdk/obf/el$11;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/el;->b:Ljava/util/HashMap;

    const-string v1, "QuickPay"

    new-instance v2, Lcom/baidu/bdgame/sdk/obf/el$12;

    invoke-direct {v2}, Lcom/baidu/bdgame/sdk/obf/el$12;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/el;->b:Ljava/util/HashMap;

    const-string v1, "Bean91Pay"

    new-instance v2, Lcom/baidu/bdgame/sdk/obf/el$2;

    invoke-direct {v2}, Lcom/baidu/bdgame/sdk/obf/el$2;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/el;->b:Ljava/util/HashMap;

    const-string v1, "KubiPay"

    new-instance v2, Lcom/baidu/bdgame/sdk/obf/el$3;

    invoke-direct {v2}, Lcom/baidu/bdgame/sdk/obf/el$3;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/el;->b:Ljava/util/HashMap;

    const-string v1, "BankCardPay"

    new-instance v2, Lcom/baidu/bdgame/sdk/obf/el$4;

    invoke-direct {v2}, Lcom/baidu/bdgame/sdk/obf/el$4;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/el;->b:Ljava/util/HashMap;

    const-string v1, "GameCardPay"

    new-instance v2, Lcom/baidu/bdgame/sdk/obf/el$5;

    invoke-direct {v2}, Lcom/baidu/bdgame/sdk/obf/el$5;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/el;->b:Ljava/util/HashMap;

    const-string v1, "QQWalletPay"

    new-instance v2, Lcom/baidu/bdgame/sdk/obf/el$6;

    invoke-direct {v2}, Lcom/baidu/bdgame/sdk/obf/el$6;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/el;->b:Ljava/util/HashMap;

    const-string v1, "YiBaoCashCardPay"

    new-instance v2, Lcom/baidu/bdgame/sdk/obf/el$7;

    invoke-direct {v2}, Lcom/baidu/bdgame/sdk/obf/el$7;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    return-void
.end method

.method private a(Lcom/baidu/bdgame/sdk/obf/ej;)V
    .registers 2

    .prologue
    .line 290
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/el;->c()V

    .line 291
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/el;->c:Lcom/baidu/bdgame/sdk/obf/ej;

    .line 292
    return-void
.end method

.method private a(Lcom/baidu/bdgame/sdk/obf/jd;Lcom/baidu/bdgame/sdk/obf/dp;Lcom/baidu/bdgame/sdk/obf/ce;)Z
    .registers 5

    .prologue
    .line 144
    if-eqz p1, :cond_8

    if-eqz p2, :cond_8

    if-eqz p3, :cond_8

    .line 146
    const/4 v0, 0x1

    .line 151
    :goto_7
    return v0

    .line 148
    :cond_8
    if-eqz p3, :cond_11

    .line 149
    invoke-virtual {p3}, Lcom/baidu/bdgame/sdk/obf/ce;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/jf;->e(Landroid/content/Context;)V

    .line 151
    :cond_11
    const/4 v0, 0x0

    goto :goto_7
.end method


# virtual methods
.method public a()Lcom/baidu/bdgame/sdk/obf/cn;
    .registers 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/el;->a:Lcom/baidu/bdgame/sdk/obf/cn;

    return-object v0
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/cn;)V
    .registers 2

    .prologue
    .line 134
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/el;->a:Lcom/baidu/bdgame/sdk/obf/cn;

    .line 135
    return-void
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/cn;Lcom/baidu/bdgame/sdk/obf/jd;Lcom/baidu/bdgame/sdk/obf/dp;Lcom/baidu/bdgame/sdk/obf/je;Lcom/baidu/bdgame/sdk/obf/iy;Lcom/baidu/bdgame/sdk/obf/ce;)V
    .registers 8

    .prologue
    .line 213
    invoke-direct {p0, p2, p3, p6}, Lcom/baidu/bdgame/sdk/obf/el;->a(Lcom/baidu/bdgame/sdk/obf/jd;Lcom/baidu/bdgame/sdk/obf/dp;Lcom/baidu/bdgame/sdk/obf/ce;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 214
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/dx;

    invoke-direct {v0, p1}, Lcom/baidu/bdgame/sdk/obf/dx;-><init>(Lcom/baidu/bdgame/sdk/obf/cn;)V

    .line 215
    invoke-virtual {v0, p6}, Lcom/baidu/bdgame/sdk/obf/dx;->a(Lcom/baidu/bdgame/sdk/obf/ce;)V

    .line 216
    invoke-virtual {v0, p2}, Lcom/baidu/bdgame/sdk/obf/dx;->a(Lcom/baidu/bdgame/sdk/obf/jd;)V

    .line 217
    invoke-virtual {v0, p3}, Lcom/baidu/bdgame/sdk/obf/dx;->a(Lcom/baidu/bdgame/sdk/obf/dp;)V

    .line 218
    invoke-virtual {v0, p4}, Lcom/baidu/bdgame/sdk/obf/dx;->a(Lcom/baidu/bdgame/sdk/obf/je;)V

    .line 219
    invoke-virtual {v0, p5}, Lcom/baidu/bdgame/sdk/obf/dx;->a(Lcom/baidu/bdgame/sdk/obf/iy;)V

    .line 220
    invoke-virtual {v0, p0}, Lcom/baidu/bdgame/sdk/obf/dx;->a(Lcom/baidu/bdgame/sdk/obf/el;)V

    .line 221
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/dx;->f()V

    .line 222
    invoke-direct {p0, v0}, Lcom/baidu/bdgame/sdk/obf/el;->a(Lcom/baidu/bdgame/sdk/obf/ej;)V

    .line 227
    :goto_23
    return-void

    .line 224
    :cond_24
    invoke-virtual {p6}, Lcom/baidu/bdgame/sdk/obf/ce;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/jf;->e(Landroid/content/Context;)V

    goto :goto_23
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/cn;Lcom/baidu/bdgame/sdk/obf/jd;Lcom/baidu/bdgame/sdk/obf/je;Lcom/baidu/bdgame/sdk/obf/iy;Lcom/baidu/bdgame/sdk/obf/ce;)V
    .registers 8

    .prologue
    .line 234
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/fm;

    invoke-direct {v0, p1}, Lcom/baidu/bdgame/sdk/obf/fm;-><init>(Lcom/baidu/bdgame/sdk/obf/cn;)V

    .line 235
    invoke-virtual {v0, p5}, Lcom/baidu/bdgame/sdk/obf/fm;->a(Lcom/baidu/bdgame/sdk/obf/ce;)V

    .line 236
    invoke-virtual {v0, p2}, Lcom/baidu/bdgame/sdk/obf/fm;->a(Lcom/baidu/bdgame/sdk/obf/jd;)V

    .line 237
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/fm;->a(Lcom/baidu/bdgame/sdk/obf/dp;)V

    .line 238
    invoke-virtual {v0, p3}, Lcom/baidu/bdgame/sdk/obf/fm;->a(Lcom/baidu/bdgame/sdk/obf/je;)V

    .line 239
    invoke-virtual {v0, p4}, Lcom/baidu/bdgame/sdk/obf/fm;->a(Lcom/baidu/bdgame/sdk/obf/iy;)V

    .line 240
    invoke-virtual {v0, p0}, Lcom/baidu/bdgame/sdk/obf/fm;->a(Lcom/baidu/bdgame/sdk/obf/el;)V

    .line 241
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/fm;->f()V

    .line 242
    invoke-direct {p0, v0}, Lcom/baidu/bdgame/sdk/obf/el;->a(Lcom/baidu/bdgame/sdk/obf/ej;)V

    .line 243
    return-void
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/jd;Lcom/baidu/bdgame/sdk/obf/dp;Lcom/baidu/bdgame/sdk/obf/je;Lcom/baidu/bdgame/sdk/obf/iy;ZLcom/baidu/bdgame/sdk/obf/iz;JLcom/baidu/bdgame/sdk/obf/ce;)V
    .registers 13

    .prologue
    .line 181
    invoke-direct {p0, p1, p2, p9}, Lcom/baidu/bdgame/sdk/obf/el;->a(Lcom/baidu/bdgame/sdk/obf/jd;Lcom/baidu/bdgame/sdk/obf/dp;Lcom/baidu/bdgame/sdk/obf/ce;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 205
    :goto_6
    return-void

    .line 184
    :cond_7
    invoke-virtual {p2}, Lcom/baidu/bdgame/sdk/obf/dp;->b()Ljava/lang/String;

    move-result-object v0

    .line 185
    sget-object v1, Lcom/baidu/bdgame/sdk/obf/el;->b:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/el$a;

    .line 186
    if-eqz v0, :cond_42

    .line 187
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/el$a;->a()Lcom/baidu/bdgame/sdk/obf/ej;

    move-result-object v0

    .line 188
    invoke-virtual {v0, p9}, Lcom/baidu/bdgame/sdk/obf/ej;->a(Lcom/baidu/bdgame/sdk/obf/ce;)V

    .line 189
    invoke-virtual {v0, p1}, Lcom/baidu/bdgame/sdk/obf/ej;->a(Lcom/baidu/bdgame/sdk/obf/jd;)V

    .line 190
    invoke-virtual {v0, p2}, Lcom/baidu/bdgame/sdk/obf/ej;->a(Lcom/baidu/bdgame/sdk/obf/dp;)V

    .line 191
    invoke-virtual {v0, p3}, Lcom/baidu/bdgame/sdk/obf/ej;->a(Lcom/baidu/bdgame/sdk/obf/je;)V

    .line 192
    invoke-virtual {v0, p4}, Lcom/baidu/bdgame/sdk/obf/ej;->a(Lcom/baidu/bdgame/sdk/obf/iy;)V

    .line 193
    invoke-virtual {v0, p0}, Lcom/baidu/bdgame/sdk/obf/ej;->a(Lcom/baidu/bdgame/sdk/obf/el;)V

    .line 194
    invoke-virtual {v0, p5}, Lcom/baidu/bdgame/sdk/obf/ej;->a(Z)V

    .line 195
    invoke-virtual {v0, p6}, Lcom/baidu/bdgame/sdk/obf/ej;->a(Lcom/baidu/bdgame/sdk/obf/iz;)V

    .line 196
    invoke-virtual {v0, p7, p8}, Lcom/baidu/bdgame/sdk/obf/ej;->a(J)V

    .line 197
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ej;->f()V

    .line 198
    invoke-direct {p0, v0}, Lcom/baidu/bdgame/sdk/obf/el;->a(Lcom/baidu/bdgame/sdk/obf/ej;)V

    .line 199
    invoke-virtual {p9}, Lcom/baidu/bdgame/sdk/obf/ce;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/baidu/bdgame/sdk/obf/dr;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dp;)V

    goto :goto_6

    .line 202
    :cond_42
    invoke-virtual {p9}, Lcom/baidu/bdgame/sdk/obf/ce;->b()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "bdp_paycenter_tips_un_opay_channel_version"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/jf;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_6
.end method

.method public b()V
    .registers 2

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/el;->c()V

    .line 273
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/el;->a:Lcom/baidu/bdgame/sdk/obf/cn;

    if-eqz v0, :cond_a

    .line 274
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/el;->a:Lcom/baidu/bdgame/sdk/obf/cn;

    .line 276
    :cond_a
    return-void
.end method

.method public b(Lcom/baidu/bdgame/sdk/obf/cn;Lcom/baidu/bdgame/sdk/obf/jd;Lcom/baidu/bdgame/sdk/obf/dp;Lcom/baidu/bdgame/sdk/obf/je;Lcom/baidu/bdgame/sdk/obf/iy;Lcom/baidu/bdgame/sdk/obf/ce;)V
    .registers 8

    .prologue
    .line 255
    invoke-direct {p0, p2, p3, p6}, Lcom/baidu/bdgame/sdk/obf/el;->a(Lcom/baidu/bdgame/sdk/obf/jd;Lcom/baidu/bdgame/sdk/obf/dp;Lcom/baidu/bdgame/sdk/obf/ce;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 256
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/dy;

    invoke-direct {v0, p1}, Lcom/baidu/bdgame/sdk/obf/dy;-><init>(Lcom/baidu/bdgame/sdk/obf/cn;)V

    .line 257
    invoke-virtual {v0, p6}, Lcom/baidu/bdgame/sdk/obf/dy;->a(Lcom/baidu/bdgame/sdk/obf/ce;)V

    .line 258
    invoke-virtual {v0, p2}, Lcom/baidu/bdgame/sdk/obf/dy;->a(Lcom/baidu/bdgame/sdk/obf/jd;)V

    .line 259
    invoke-virtual {v0, p3}, Lcom/baidu/bdgame/sdk/obf/dy;->a(Lcom/baidu/bdgame/sdk/obf/dp;)V

    .line 260
    invoke-virtual {v0, p4}, Lcom/baidu/bdgame/sdk/obf/dy;->a(Lcom/baidu/bdgame/sdk/obf/je;)V

    .line 261
    invoke-virtual {v0, p5}, Lcom/baidu/bdgame/sdk/obf/dy;->a(Lcom/baidu/bdgame/sdk/obf/iy;)V

    .line 262
    invoke-virtual {v0, p0}, Lcom/baidu/bdgame/sdk/obf/dy;->a(Lcom/baidu/bdgame/sdk/obf/el;)V

    .line 263
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/dy;->f()V

    .line 264
    invoke-direct {p0, v0}, Lcom/baidu/bdgame/sdk/obf/el;->a(Lcom/baidu/bdgame/sdk/obf/ej;)V

    .line 269
    :goto_23
    return-void

    .line 266
    :cond_24
    invoke-virtual {p6}, Lcom/baidu/bdgame/sdk/obf/ce;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/jf;->e(Landroid/content/Context;)V

    goto :goto_23
.end method

.method public c()V
    .registers 4

    .prologue
    .line 282
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/el;->c:Lcom/baidu/bdgame/sdk/obf/ej;

    if-eqz v0, :cond_28

    .line 283
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destory mPayFlow "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/el;->c:Lcom/baidu/bdgame/sdk/obf/ej;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/la;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/el;->c:Lcom/baidu/bdgame/sdk/obf/ej;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ej;->g()V

    .line 285
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/el;->c:Lcom/baidu/bdgame/sdk/obf/ej;

    .line 287
    :cond_28
    return-void
.end method
