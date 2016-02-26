.class public Lcom/qbao/sdk/e/a;
.super Lcom/qbao/core/util/a;
.source "Const.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qbao/sdk/e/a$a;,
        Lcom/qbao/sdk/e/a$b;,
        Lcom/qbao/sdk/e/a$c;
    }
.end annotation


# static fields
.field public static VERSION:Ljava/lang/String; = null

.field public static final fA:Ljava/lang/String; = "last_logged_in_token"

.field public static final fB:Ljava/lang/String; = "is_save_password"

.field public static final fp:Ljava/lang/String; = "https://testuser.qbao.com/api/"

.field public static final fq:Ljava/lang/String; = "http://testm.qbao.com/api/"

.field public static final fr:Ljava/lang/String; = "https://testsdkserver.qbao.com/"

.field public static fs:Ljava/lang/String; = null

.field public static final ft:Ljava/lang/String; = "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDDUn+hM/Ae5ptuusz4aFSaPQtZPucsA4wVoyoA+8hLMTHuEWcdjdKewcf9bFH2krwtpo6CG0CGFBj9ivf8nGzeCc6t68fM5InV0oOxUujXBXhXpEvvDu9F+Yadnv6lx8M0raWRx8uhKUhdzPKEbiaiMJPIh4IdLgzxOYlskYr9DwIDAQAB"

.field public static fu:Ljava/lang/String; = null

.field public static final fv:I = 0x3e8

.field public static fw:Ljava/lang/String; = null

.field public static fx:Ljava/lang/String; = null

.field public static final fy:Ljava/lang/String; = "last_logged_in_username"

.field public static final fz:Ljava/lang/String; = "last_logged_in_password"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    const-string v0, "OLzELOMEH+o="

    sput-object v0, Lcom/qbao/sdk/e/a;->fs:Ljava/lang/String;

    .line 25
    const-string v0, "qianbao666"

    sput-object v0, Lcom/qbao/sdk/e/a;->fu:Ljava/lang/String;

    .line 30
    const-string v0, "1.0.0"

    sput-object v0, Lcom/qbao/sdk/e/a;->VERSION:Ljava/lang/String;

    .line 31
    const-string v0, "1"

    sput-object v0, Lcom/qbao/sdk/e/a;->fx:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/qbao/core/util/a;-><init>()V

    return-void
.end method
