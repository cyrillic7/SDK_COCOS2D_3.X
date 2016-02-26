.class public final Lcom/baidu/paysdk/beans/PayBeanFactory;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/wallet/core/beans/IBeanFactory;


# static fields
.field public static final BEAN_ID_BALANCE_PAY:I = 0xe

.field public static final BEAN_ID_BIND_CARD:I = 0x201

.field public static final BEAN_ID_CALC_PAYMENT:I = 0x10

.field public static final BEAN_ID_CHECK_CARD_INFO:I = 0x5

.field public static final BEAN_ID_CHECK_MOBILE_PWD:I = 0x102

.field public static final BEAN_ID_CHECK_PC_PWD:I = 0x105

.field public static final BEAN_ID_COMPLETE_CARD:I = 0x203

.field public static final BEAN_ID_CREATE_MOBILE_PWD:I = 0x106

.field public static final BEAN_ID_FAST_PAY_QUERY:I = 0xc

.field public static final BEAN_ID_FIND_MOBILE_PWD:I = 0x104

.field public static final BEAN_ID_GET_CARD_INFO:I = 0x4

.field public static final BEAN_ID_GET_PAY_ORDER:I = 0x1

.field public static final BEAN_ID_GET_SCORE_TIP:I = 0xf

.field public static final BEAN_ID_MODIFY_MOBILE_PWD:I = 0x103

.field public static final BEAN_ID_PAY:I = 0xd

.field public static final BEAN_ID_SEND_BFB_SMS:I = 0xa

.field public static final BEAN_ID_SEND_SMS:I = 0x9

.field public static final BEAN_ID_SIGN_CHANNEL_LIST:I = 0x205

.field public static final BEAN_ID_USER_INFO:I = 0x6

.field public static final BEAN_ID_VERIFY_MOBILE_PWD:I = 0x101

.field public static final BEAN_ID_VERIFY_SMS_CODE:I = 0xb

.field private static a:Lcom/baidu/paysdk/beans/PayBeanFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/paysdk/beans/PayBeanFactory;->a:Lcom/baidu/paysdk/beans/PayBeanFactory;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/baidu/paysdk/beans/PayBeanFactory;
    .registers 2

    const-class v1, Lcom/baidu/paysdk/beans/PayBeanFactory;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/baidu/paysdk/beans/PayBeanFactory;->a:Lcom/baidu/paysdk/beans/PayBeanFactory;

    if-nez v0, :cond_e

    new-instance v0, Lcom/baidu/paysdk/beans/PayBeanFactory;

    invoke-direct {v0}, Lcom/baidu/paysdk/beans/PayBeanFactory;-><init>()V

    sput-object v0, Lcom/baidu/paysdk/beans/PayBeanFactory;->a:Lcom/baidu/paysdk/beans/PayBeanFactory;

    :cond_e
    sget-object v0, Lcom/baidu/paysdk/beans/PayBeanFactory;->a:Lcom/baidu/paysdk/beans/PayBeanFactory;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getBean(Landroid/content/Context;ILjava/lang/String;)Lcom/baidu/wallet/core/beans/BaseBean;
    .registers 6

    const/4 v0, 0x0

    sparse-switch p2, :sswitch_data_74

    :goto_4
    if-eqz v0, :cond_d

    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanManager;->getInstance()Lcom/baidu/wallet/core/beans/BeanManager;

    move-result-object v1

    invoke-virtual {v1, p3, v0}, Lcom/baidu/wallet/core/beans/BeanManager;->addBean(Ljava/lang/String;Lcom/baidu/wallet/core/beans/BaseBean;)V

    :cond_d
    return-object v0

    :sswitch_e
    new-instance v0, Lcom/baidu/paysdk/beans/c;

    invoke-direct {v0, p1}, Lcom/baidu/paysdk/beans/c;-><init>(Landroid/content/Context;)V

    goto :goto_4

    :sswitch_14
    new-instance v0, Lcom/baidu/paysdk/beans/g;

    invoke-direct {v0, p1}, Lcom/baidu/paysdk/beans/g;-><init>(Landroid/content/Context;)V

    goto :goto_4

    :sswitch_1a
    new-instance v0, Lcom/baidu/paysdk/beans/b;

    invoke-direct {v0, p1}, Lcom/baidu/paysdk/beans/b;-><init>(Landroid/content/Context;)V

    goto :goto_4

    :sswitch_20
    new-instance v0, Lcom/baidu/paysdk/beans/UserInfoBean;

    invoke-direct {v0, p1}, Lcom/baidu/paysdk/beans/UserInfoBean;-><init>(Landroid/content/Context;)V

    goto :goto_4

    :sswitch_26
    new-instance v0, Lcom/baidu/paysdk/beans/p;

    invoke-direct {v0, p1}, Lcom/baidu/paysdk/beans/p;-><init>(Landroid/content/Context;)V

    goto :goto_4

    :sswitch_2c
    new-instance v0, Lcom/baidu/paysdk/beans/j;

    invoke-direct {v0, p1}, Lcom/baidu/paysdk/beans/j;-><init>(Landroid/content/Context;)V

    goto :goto_4

    :sswitch_32
    new-instance v0, Lcom/baidu/paysdk/beans/l;

    invoke-direct {v0, p1}, Lcom/baidu/paysdk/beans/l;-><init>(Landroid/content/Context;)V

    goto :goto_4

    :sswitch_38
    new-instance v0, Lcom/baidu/paysdk/beans/h;

    invoke-direct {v0, p1}, Lcom/baidu/paysdk/beans/h;-><init>(Landroid/content/Context;)V

    goto :goto_4

    :sswitch_3e
    new-instance v0, Lcom/baidu/paysdk/beans/i;

    invoke-direct {v0, p1}, Lcom/baidu/paysdk/beans/i;-><init>(Landroid/content/Context;)V

    goto :goto_4

    :sswitch_44
    new-instance v0, Lcom/baidu/paysdk/beans/n;

    invoke-direct {v0, p1}, Lcom/baidu/paysdk/beans/n;-><init>(Landroid/content/Context;)V

    goto :goto_4

    :sswitch_4a
    new-instance v0, Lcom/baidu/paysdk/beans/f;

    invoke-direct {v0, p1}, Lcom/baidu/paysdk/beans/f;-><init>(Landroid/content/Context;)V

    goto :goto_4

    :sswitch_50
    new-instance v0, Lcom/baidu/paysdk/beans/a;

    invoke-direct {v0, p1}, Lcom/baidu/paysdk/beans/a;-><init>(Landroid/content/Context;)V

    goto :goto_4

    :sswitch_56
    new-instance v0, Lcom/baidu/paysdk/beans/o;

    invoke-direct {v0, p1}, Lcom/baidu/paysdk/beans/o;-><init>(Landroid/content/Context;)V

    goto :goto_4

    :sswitch_5c
    new-instance v0, Lcom/baidu/paysdk/beans/e;

    invoke-direct {v0, p1}, Lcom/baidu/paysdk/beans/e;-><init>(Landroid/content/Context;)V

    goto :goto_4

    :sswitch_62
    new-instance v0, Lcom/baidu/paysdk/beans/d;

    invoke-direct {v0, p1}, Lcom/baidu/paysdk/beans/d;-><init>(Landroid/content/Context;)V

    goto :goto_4

    :sswitch_68
    new-instance v0, Lcom/baidu/paysdk/beans/m;

    invoke-direct {v0, p1}, Lcom/baidu/paysdk/beans/m;-><init>(Landroid/content/Context;)V

    goto :goto_4

    :sswitch_6e
    new-instance v0, Lcom/baidu/paysdk/beans/k;

    invoke-direct {v0, p1}, Lcom/baidu/paysdk/beans/k;-><init>(Landroid/content/Context;)V

    goto :goto_4

    :sswitch_data_74
    .sparse-switch
        0x1 -> :sswitch_e
        0x4 -> :sswitch_14
        0x5 -> :sswitch_1a
        0x6 -> :sswitch_20
        0xb -> :sswitch_56
        0xc -> :sswitch_26
        0xd -> :sswitch_2c
        0xe -> :sswitch_32
        0xf -> :sswitch_5c
        0x10 -> :sswitch_38
        0x101 -> :sswitch_3e
        0x102 -> :sswitch_3e
        0x103 -> :sswitch_3e
        0x104 -> :sswitch_44
        0x105 -> :sswitch_62
        0x106 -> :sswitch_68
        0x201 -> :sswitch_4a
        0x203 -> :sswitch_50
        0x205 -> :sswitch_6e
    .end sparse-switch
.end method
