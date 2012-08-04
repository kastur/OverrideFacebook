.class Lcom/facebook/katana/util/logging/MobileEventLogger$MobileEventLogConfig$Factory;
.super Ljava/lang/Object;
.source "MobileEventLogger.java"

# interfaces
.implements Lcom/facebook/katana/features/LoggingConfigSettings$ConfigFactory;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0
    .parameter

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/facebook/katana/util/logging/MobileEventLogger$MobileEventLogConfig$Factory;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/facebook/katana/features/LoggingConfigSettings$ConfigValues;
    .locals 1

    .prologue
    .line 184
    new-instance v0, Lcom/facebook/katana/util/logging/MobileEventLogger$MobileEventLogConfig$Settings;

    invoke-direct {v0}, Lcom/facebook/katana/util/logging/MobileEventLogger$MobileEventLogConfig$Settings;-><init>()V

    return-object v0
.end method

.method public final a(Lorg/codehaus/jackson/JsonParser;)Lcom/facebook/katana/features/LoggingConfigSettings$ConfigValues;
    .locals 1
    .parameter

    .prologue
    .line 175
    :try_start_0
    const-class v0, Lcom/facebook/katana/util/logging/MobileEventLogger$MobileEventLogConfig$Settings;

    invoke-static {p1, v0}, Lcom/facebook/katana/util/jsonmirror/JMParser;->a(Lorg/codehaus/jackson/JsonParser;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/features/LoggingConfigSettings$ConfigValues;
    :try_end_0
    .catch Lcom/facebook/katana/util/jsonmirror/JMException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    sget-object v0, Lcom/facebook/katana/util/logging/MobileEventLogger$MobileEventLogConfig;->a:Ljava/lang/String;

    return-object v0
.end method
