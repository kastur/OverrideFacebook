.class public Lcom/facebook/katana/service/method/UserUpdateAlertSettings;
.super Lcom/facebook/katana/service/method/ApiMethod;
.source "UserUpdateAlertSettings.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/facebook/katana/service/method/UserUpdateAlertSettings$1;

    invoke-direct {v0}, Lcom/facebook/katana/service/method/UserUpdateAlertSettings$1;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    return-void
.end method


# virtual methods
.method protected final a(Lorg/codehaus/jackson/JsonParser;)V
    .locals 1
    .parameter

    .prologue
    .line 114
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->e()Lorg/codehaus/jackson/JsonToken;

    .line 115
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_TRUE:Lorg/codehaus/jackson/JsonToken;

    .line 116
    return-void
.end method
