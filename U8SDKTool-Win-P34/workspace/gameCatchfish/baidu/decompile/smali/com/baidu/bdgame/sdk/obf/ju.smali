.class public final Lcom/baidu/bdgame/sdk/obf/ju;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Z = false

.field public static b:Lcom/baidu/platformsdk/BDPlatformSetting$Domain; = null

.field public static final c:Z = false

.field public static final d:Ljava/lang/String; = "3.5.2"

.field public static final e:I = 0x0

.field public static f:I = 0x0

.field public static final g:Ljava/util/Locale;

.field public static h:Ljava/lang/String; = null

.field public static i:Ljava/lang/String; = null

.field public static j:Z = false

.field public static final k:Ljava/lang/String; = "http://sdkapi.91.com/call.ashx"

.field public static final l:Ljava/lang/String; = "http://sdkapi.91.com/call.ashx"

.field public static m:Ljava/lang/String;

.field public static n:Ljava/lang/String;

.field public static volatile o:Ljava/lang/String;

.field public static volatile p:Ljava/lang/String;

.field public static q:Ljava/lang/String;

.field public static r:Ljava/lang/String;

.field public static s:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 14
    sput-boolean v1, Lcom/baidu/bdgame/sdk/obf/ju;->a:Z

    .line 16
    sget-object v0, Lcom/baidu/platformsdk/BDPlatformSetting$Domain;->DOMAIN_ONLINE:Lcom/baidu/platformsdk/BDPlatformSetting$Domain;

    sput-object v0, Lcom/baidu/bdgame/sdk/obf/ju;->b:Lcom/baidu/platformsdk/BDPlatformSetting$Domain;

    .line 25
    sput v1, Lcom/baidu/bdgame/sdk/obf/ju;->f:I

    .line 27
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    sput-object v0, Lcom/baidu/bdgame/sdk/obf/ju;->g:Ljava/util/Locale;

    .line 35
    const/4 v0, 0x1

    sput-boolean v0, Lcom/baidu/bdgame/sdk/obf/ju;->j:Z

    .line 51
    const-string v0, "http://sdkapi.91.com/call.ashx"

    sput-object v0, Lcom/baidu/bdgame/sdk/obf/ju;->m:Ljava/lang/String;

    .line 52
    const-string v0, "http://useractionsdkapi.91.com/call.ashx"

    sput-object v0, Lcom/baidu/bdgame/sdk/obf/ju;->n:Ljava/lang/String;

    .line 77
    const-string v0, "http://sdkapi.91.com/call.ashx"

    sput-object v0, Lcom/baidu/bdgame/sdk/obf/ju;->o:Ljava/lang/String;

    .line 78
    const-string v0, "http://sdkapi.91.com/call.ashx"

    sput-object v0, Lcom/baidu/bdgame/sdk/obf/ju;->p:Ljava/lang/String;

    .line 82
    const-string v0, "http://wappass.baidu.com/wp/wappassword?adapter=3&skin="

    sput-object v0, Lcom/baidu/bdgame/sdk/obf/ju;->q:Ljava/lang/String;

    .line 84
    const-string v0, "http://wappass.baidu.com/wp/security?adapter=3&skin="

    sput-object v0, Lcom/baidu/bdgame/sdk/obf/ju;->r:Ljava/lang/String;

    .line 88
    const-string v0, "http://mpay.91.com/storemobile/SDKV3/PayPwd/reSet.shtml?AccessToken="

    sput-object v0, Lcom/baidu/bdgame/sdk/obf/ju;->s:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public static a()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 96
    sget-object v0, Lcom/baidu/platformsdk/BDPlatformSetting$Domain;->DOMAIN_ONLINE:Lcom/baidu/platformsdk/BDPlatformSetting$Domain;

    sput-object v0, Lcom/baidu/bdgame/sdk/obf/ju;->b:Lcom/baidu/platformsdk/BDPlatformSetting$Domain;

    .line 97
    const/4 v0, 0x0

    sput v0, Lcom/baidu/bdgame/sdk/obf/ju;->f:I

    .line 98
    sput-object v1, Lcom/baidu/bdgame/sdk/obf/ju;->h:Ljava/lang/String;

    .line 99
    sput-object v1, Lcom/baidu/bdgame/sdk/obf/ju;->i:Ljava/lang/String;

    .line 102
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/ju;->b()V

    .line 103
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 110
    sput-object p0, Lcom/baidu/bdgame/sdk/obf/ju;->o:Ljava/lang/String;

    .line 111
    sput-object p1, Lcom/baidu/bdgame/sdk/obf/ju;->p:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public static b()V
    .registers 2

    .prologue
    .line 106
    const-string v0, "http://sdkapi.91.com/call.ashx"

    const-string v1, "http://sdkapi.91.com/call.ashx"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ju;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    return-void
.end method
