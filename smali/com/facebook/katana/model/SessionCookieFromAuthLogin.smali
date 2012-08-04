.class public Lcom/facebook/katana/model/SessionCookieFromAuthLogin;
.super Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;
.source "SessionCookieFromAuthLogin.java"


# static fields
.field private static final DOMAIN:Ljava/lang/String; = "Domain"

.field private static final EXPIRES:Ljava/lang/String; = "Expires"

.field private static final PATH:Ljava/lang/String; = "Path"

.field private static final SECURE:Ljava/lang/String; = "secure"


# instance fields
.field private final mDomain:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "domain"
    .end annotation
.end field

.field private final mExpires:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "expires"
    .end annotation
.end field

.field private final mName:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "name"
    .end annotation
.end field

.field private mPath:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "path"
    .end annotation
.end field

.field private mSecure:Z
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "secure"
    .end annotation
.end field

.field private final mValue:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "value"
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;-><init>()V

    .line 42
    iput-object v1, p0, Lcom/facebook/katana/model/SessionCookieFromAuthLogin;->mName:Ljava/lang/String;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/facebook/katana/model/SessionCookieFromAuthLogin;->mValue:Ljava/lang/String;

    .line 44
    iput-object v1, p0, Lcom/facebook/katana/model/SessionCookieFromAuthLogin;->mExpires:Ljava/lang/String;

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/facebook/katana/model/SessionCookieFromAuthLogin;->mDomain:Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/katana/model/SessionCookieFromAuthLogin;->mSecure:Z

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/facebook/katana/model/SessionCookieFromAuthLogin;->mPath:Ljava/lang/String;

    .line 48
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 84
    iget-object v0, p0, Lcom/facebook/katana/model/SessionCookieFromAuthLogin;->mName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 85
    const/4 v0, 0x0

    .line 97
    :goto_0
    return-object v0

    .line 88
    :cond_0
    new-instance v0, Lcom/facebook/katana/model/SessionCookieFromAuthLogin$CookieBuilder;

    invoke-direct {v0, p0}, Lcom/facebook/katana/model/SessionCookieFromAuthLogin$CookieBuilder;-><init>(Lcom/facebook/katana/model/SessionCookieFromAuthLogin;)V

    iget-object v1, p0, Lcom/facebook/katana/model/SessionCookieFromAuthLogin;->mName:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/katana/model/SessionCookieFromAuthLogin;->mValue:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/katana/model/SessionCookieFromAuthLogin$CookieBuilder;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/katana/model/SessionCookieFromAuthLogin$CookieBuilder;

    move-result-object v0

    .line 89
    iget-object v1, p0, Lcom/facebook/katana/model/SessionCookieFromAuthLogin;->mExpires:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 90
    const-string v1, "Expires"

    iget-object v2, p0, Lcom/facebook/katana/model/SessionCookieFromAuthLogin;->mExpires:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/katana/model/SessionCookieFromAuthLogin$CookieBuilder;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/katana/model/SessionCookieFromAuthLogin$CookieBuilder;

    .line 92
    :cond_1
    const-string v1, "Domain"

    iget-object v2, p0, Lcom/facebook/katana/model/SessionCookieFromAuthLogin;->mDomain:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/katana/model/SessionCookieFromAuthLogin$CookieBuilder;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/katana/model/SessionCookieFromAuthLogin$CookieBuilder;

    move-result-object v1

    const-string v2, "Path"

    iget-object v3, p0, Lcom/facebook/katana/model/SessionCookieFromAuthLogin;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/facebook/katana/model/SessionCookieFromAuthLogin$CookieBuilder;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/katana/model/SessionCookieFromAuthLogin$CookieBuilder;

    .line 94
    iget-boolean v1, p0, Lcom/facebook/katana/model/SessionCookieFromAuthLogin;->mSecure:Z

    if-eqz v1, :cond_2

    .line 95
    const-string v1, "secure"

    invoke-virtual {v0, v1}, Lcom/facebook/katana/model/SessionCookieFromAuthLogin$CookieBuilder;->a(Ljava/lang/String;)Lcom/facebook/katana/model/SessionCookieFromAuthLogin$CookieBuilder;

    .line 97
    :cond_2
    invoke-virtual {v0}, Lcom/facebook/katana/model/SessionCookieFromAuthLogin$CookieBuilder;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
