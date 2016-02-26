.class public Lcom/unionpay/mobile/android/net/HttpNative;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/unionpay/mobile/android/net/HttpNative;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/unionpay/mobile/android/net/HttpNative;->a:Lcom/unionpay/mobile/android/net/HttpNative;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/unionpay/mobile/android/net/HttpNative;
    .registers 1

    sget-object v0, Lcom/unionpay/mobile/android/net/HttpNative;->a:Lcom/unionpay/mobile/android/net/HttpNative;

    if-nez v0, :cond_b

    new-instance v0, Lcom/unionpay/mobile/android/net/HttpNative;

    invoke-direct {v0}, Lcom/unionpay/mobile/android/net/HttpNative;-><init>()V

    sput-object v0, Lcom/unionpay/mobile/android/net/HttpNative;->a:Lcom/unionpay/mobile/android/net/HttpNative;

    :cond_b
    sget-object v0, Lcom/unionpay/mobile/android/net/HttpNative;->a:Lcom/unionpay/mobile/android/net/HttpNative;

    return-object v0
.end method


# virtual methods
.method public native getIssuer(I)Ljava/lang/String;
.end method

.method public native getSubject(I)Ljava/lang/String;
.end method
