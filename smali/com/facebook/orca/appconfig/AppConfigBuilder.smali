.class public Lcom/facebook/orca/appconfig/AppConfigBuilder;
.super Ljava/lang/Object;
.source "AppConfigBuilder.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/facebook/orca/appconfig/AppConfigBuilder;
    .locals 0
    .parameter

    .prologue
    .line 48
    iput p1, p0, Lcom/facebook/orca/appconfig/AppConfigBuilder;->d:I

    .line 49
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/facebook/orca/appconfig/AppConfigBuilder;
    .locals 0
    .parameter

    .prologue
    .line 21
    iput-object p1, p0, Lcom/facebook/orca/appconfig/AppConfigBuilder;->a:Ljava/lang/String;

    .line 22
    return-object p0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/facebook/orca/appconfig/AppConfigBuilder;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b(I)Lcom/facebook/orca/appconfig/AppConfigBuilder;
    .locals 0
    .parameter

    .prologue
    .line 57
    iput p1, p0, Lcom/facebook/orca/appconfig/AppConfigBuilder;->e:I

    .line 58
    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lcom/facebook/orca/appconfig/AppConfigBuilder;
    .locals 0
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/facebook/orca/appconfig/AppConfigBuilder;->b:Ljava/lang/String;

    .line 31
    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/facebook/orca/appconfig/AppConfigBuilder;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c(Ljava/lang/String;)Lcom/facebook/orca/appconfig/AppConfigBuilder;
    .locals 0
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/facebook/orca/appconfig/AppConfigBuilder;->c:Ljava/lang/String;

    .line 40
    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/facebook/orca/appconfig/AppConfigBuilder;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/facebook/orca/appconfig/AppConfigBuilder;->d:I

    return v0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/facebook/orca/appconfig/AppConfigBuilder;->e:I

    return v0
.end method

.method public final f()Lcom/facebook/orca/appconfig/AppConfig;
    .locals 1

    .prologue
    .line 62
    new-instance v0, Lcom/facebook/orca/appconfig/AppConfig;

    invoke-direct {v0, p0}, Lcom/facebook/orca/appconfig/AppConfig;-><init>(Lcom/facebook/orca/appconfig/AppConfigBuilder;)V

    return-object v0
.end method
