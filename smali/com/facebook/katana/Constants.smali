.class public Lcom/facebook/katana/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field private static a:Z

.field private static b:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 306
    const/4 v0, 0x0

    sput-boolean v0, Lcom/facebook/katana/Constants;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    return-void
.end method

.method static a(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter

    .prologue
    .line 316
    sget-object v0, Lcom/facebook/katana/Constants;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 317
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/facebook/katana/Constants;->b:Landroid/content/SharedPreferences;

    .line 321
    :cond_0
    sget-object v0, Lcom/facebook/katana/Constants;->b:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 312
    const/4 v0, 0x0

    return v0
.end method

.method public static b(Landroid/content/Context;)Lcom/facebook/apache/http/HttpHost;
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 325
    invoke-static {}, Lcom/facebook/katana/Constants;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 337
    :cond_0
    :goto_0
    return-object v0

    .line 328
    :cond_1
    invoke-static {p0}, Lcom/facebook/katana/Constants;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "proxy"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 329
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 332
    const/16 v0, 0x3a

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 333
    const/4 v0, -0x1

    if-ne v2, v0, :cond_2

    .line 334
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "proxy setting should provide port number"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 336
    :cond_2
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 337
    new-instance v0, Lcom/facebook/apache/http/HttpHost;

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lcom/facebook/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    goto :goto_0
.end method
