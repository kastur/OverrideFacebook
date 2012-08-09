.class public Lcom/facebook/katana/model/FacebookSessionInfo;
.super Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;
.source "FacebookSessionInfo.java"


# static fields
.field public static final ERROR_DATA:Ljava/lang/String; = "error_data"

.field public static final FILTER_KEY:Ljava/lang/String; = "filter"

.field public static final MACHINE_ID:Ljava/lang/String; = "machine_id"

.field public static final OAUTH_TOKEN_KEY:Ljava/lang/String; = "access_token"

.field public static final PROFILE_KEY:Ljava/lang/String; = "profile"

.field public static final SECRET_KEY:Ljava/lang/String; = "secret"

.field public static final SESSION_COOKIES_FROM_AUTH_LOGIN:Ljava/lang/String; = "session_cookies"

.field public static final SESSION_KEY:Ljava/lang/String; = "session_key"

.field public static final USERNAME_KEY:Ljava/lang/String; = "username"

.field public static final USER_ID_KEY:Ljava/lang/String; = "uid"

.field public static final sInvalidSessionInfo:Lcom/facebook/katana/model/FacebookSessionInfo;


# instance fields
.field public final errorData:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "error_data"
    .end annotation
.end field

.field private mFilterKey:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "filter"
    .end annotation
.end field

.field private mMyself:Lcom/facebook/katana/model/FacebookUser;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "profile"
    .end annotation
.end field

.field private mSessionCookiesFromAuthLogin:Ljava/util/List;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$ListType;
        a = {
            Lcom/facebook/katana/model/SessionCookieFromAuthLogin;
        }
        jsonFieldName = "session_cookies"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/SessionCookieFromAuthLogin;",
            ">;"
        }
    .end annotation
.end field

.field public final machineID:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "machine_id"
    .end annotation
.end field

.field public final oAuthToken:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "access_token"
    .end annotation
.end field

.field public final sessionKey:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "session_key"
    .end annotation
.end field

.field public final sessionSecret:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "secret"
    .end annotation
.end field

.field public final userId:J
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "uid"
    .end annotation
.end field

.field public final username:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "username"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/facebook/katana/model/FacebookSessionInfo;

    invoke-direct {v0}, Lcom/facebook/katana/model/FacebookSessionInfo;-><init>()V

    sput-object v0, Lcom/facebook/katana/model/FacebookSessionInfo;->sInvalidSessionInfo:Lcom/facebook/katana/model/FacebookSessionInfo;

    return-void
.end method

.method protected constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 90
    invoke-direct {p0}, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;-><init>()V

    .line 91
    iput-object v2, p0, Lcom/facebook/katana/model/FacebookSessionInfo;->username:Ljava/lang/String;

    .line 92
    iput-object v2, p0, Lcom/facebook/katana/model/FacebookSessionInfo;->sessionKey:Ljava/lang/String;

    .line 93
    iput-object v2, p0, Lcom/facebook/katana/model/FacebookSessionInfo;->sessionSecret:Ljava/lang/String;

    .line 94
    iput-object v2, p0, Lcom/facebook/katana/model/FacebookSessionInfo;->oAuthToken:Ljava/lang/String;

    .line 95
    iput-object v2, p0, Lcom/facebook/katana/model/FacebookSessionInfo;->machineID:Ljava/lang/String;

    .line 96
    iput-object v2, p0, Lcom/facebook/katana/model/FacebookSessionInfo;->errorData:Ljava/lang/String;

    .line 97
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/katana/model/FacebookSessionInfo;->userId:J

    .line 98
    iput-object v2, p0, Lcom/facebook/katana/model/FacebookSessionInfo;->mSessionCookiesFromAuthLogin:Ljava/util/List;

    .line 99
    return-void
.end method

.method public constructor <init>(Lcom/facebook/katana/model/FacebookSessionInfo;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;-><init>()V

    .line 110
    iget-object v0, p1, Lcom/facebook/katana/model/FacebookSessionInfo;->username:Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/katana/model/FacebookSessionInfo;->username:Ljava/lang/String;

    .line 111
    iget-object v0, p1, Lcom/facebook/katana/model/FacebookSessionInfo;->sessionKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/katana/model/FacebookSessionInfo;->sessionKey:Ljava/lang/String;

    .line 112
    iget-object v0, p1, Lcom/facebook/katana/model/FacebookSessionInfo;->sessionSecret:Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/katana/model/FacebookSessionInfo;->sessionSecret:Ljava/lang/String;

    .line 113
    iput-object p2, p0, Lcom/facebook/katana/model/FacebookSessionInfo;->oAuthToken:Ljava/lang/String;

    .line 114
    iget-wide v0, p1, Lcom/facebook/katana/model/FacebookSessionInfo;->userId:J

    iput-wide v0, p0, Lcom/facebook/katana/model/FacebookSessionInfo;->userId:J

    .line 115
    iget-object v0, p1, Lcom/facebook/katana/model/FacebookSessionInfo;->machineID:Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/katana/model/FacebookSessionInfo;->machineID:Ljava/lang/String;

    .line 116
    iget-object v0, p1, Lcom/facebook/katana/model/FacebookSessionInfo;->errorData:Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/katana/model/FacebookSessionInfo;->errorData:Ljava/lang/String;

    .line 117
    iget-object v0, p1, Lcom/facebook/katana/model/FacebookSessionInfo;->mFilterKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/katana/model/FacebookSessionInfo;->mFilterKey:Ljava/lang/String;

    .line 118
    iget-object v0, p1, Lcom/facebook/katana/model/FacebookSessionInfo;->mMyself:Lcom/facebook/katana/model/FacebookUser;

    iput-object v0, p0, Lcom/facebook/katana/model/FacebookSessionInfo;->mMyself:Lcom/facebook/katana/model/FacebookUser;

    .line 119
    invoke-virtual {p1}, Lcom/facebook/katana/model/FacebookSessionInfo;->d()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/model/FacebookSessionInfo;->mSessionCookiesFromAuthLogin:Ljava/util/List;

    .line 120
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/facebook/katana/model/FacebookSessionInfo;
    .locals 2
    .parameter

    .prologue
    .line 132
    new-instance v0, Lorg/codehaus/jackson/JsonFactory;

    invoke-direct {v0}, Lorg/codehaus/jackson/JsonFactory;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codehaus/jackson/JsonFactory;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    .line 134
    const-class v1, Lcom/facebook/katana/model/FacebookSessionInfo;

    invoke-static {v0, v1}, Lcom/facebook/katana/util/jsonmirror/JMParser;->a(Lorg/codehaus/jackson/JsonParser;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookSessionInfo;

    return-object v0
.end method

.method public static a(Lcom/facebook/katana/model/FacebookSessionInfo;)Z
    .locals 1
    .parameter

    .prologue
    .line 51
    if-eqz p0, :cond_0

    sget-object v0, Lcom/facebook/katana/model/FacebookSessionInfo;->sInvalidSessionInfo:Lcom/facebook/katana/model/FacebookSessionInfo;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/facebook/katana/model/FacebookUser;)V
    .locals 0
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/facebook/katana/model/FacebookSessionInfo;->mMyself:Lcom/facebook/katana/model/FacebookUser;

    .line 143
    return-void
.end method

.method public final b()Lcom/facebook/katana/model/FacebookUser;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookSessionInfo;->mMyself:Lcom/facebook/katana/model/FacebookUser;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 158
    iput-object p1, p0, Lcom/facebook/katana/model/FacebookSessionInfo;->mFilterKey:Ljava/lang/String;

    .line 159
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookSessionInfo;->mFilterKey:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/SessionCookieFromAuthLogin;",
            ">;"
        }
    .end annotation

    .prologue
    .line 173
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookSessionInfo;->mSessionCookiesFromAuthLogin:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookSessionInfo;->mSessionCookiesFromAuthLogin:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 176
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/katana/model/FacebookSessionInfo;->mSessionCookiesFromAuthLogin:Ljava/util/List;

    .line 185
    return-void
.end method

.method public final f()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 194
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 195
    const-string v1, "username"

    iget-object v2, p0, Lcom/facebook/katana/model/FacebookSessionInfo;->username:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 196
    const-string v1, "uid"

    iget-wide v2, p0, Lcom/facebook/katana/model/FacebookSessionInfo;->userId:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 197
    const-string v1, "session_key"

    iget-object v2, p0, Lcom/facebook/katana/model/FacebookSessionInfo;->sessionKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 198
    const-string v1, "secret"

    iget-object v2, p0, Lcom/facebook/katana/model/FacebookSessionInfo;->sessionSecret:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 199
    const-string v1, "access_token"

    iget-object v2, p0, Lcom/facebook/katana/model/FacebookSessionInfo;->oAuthToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 200
    const-string v1, "machine_id"

    iget-object v2, p0, Lcom/facebook/katana/model/FacebookSessionInfo;->machineID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 201
    iget-object v1, p0, Lcom/facebook/katana/model/FacebookSessionInfo;->errorData:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 202
    const-string v1, "error_data"

    iget-object v2, p0, Lcom/facebook/katana/model/FacebookSessionInfo;->errorData:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 204
    :cond_0
    iget-object v1, p0, Lcom/facebook/katana/model/FacebookSessionInfo;->mMyself:Lcom/facebook/katana/model/FacebookUser;

    if-eqz v1, :cond_1

    .line 205
    const-string v1, "profile"

    iget-object v2, p0, Lcom/facebook/katana/model/FacebookSessionInfo;->mMyself:Lcom/facebook/katana/model/FacebookUser;

    invoke-virtual {v2}, Lcom/facebook/katana/model/FacebookUser;->d()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 207
    :cond_1
    iget-object v1, p0, Lcom/facebook/katana/model/FacebookSessionInfo;->mFilterKey:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 208
    const-string v1, "filter"

    iget-object v2, p0, Lcom/facebook/katana/model/FacebookSessionInfo;->mFilterKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 210
    :cond_2
    iget-object v1, p0, Lcom/facebook/katana/model/FacebookSessionInfo;->mSessionCookiesFromAuthLogin:Ljava/util/List;

    if-eqz v1, :cond_3

    .line 211
    const-string v1, "session_cookies"

    iget-object v2, p0, Lcom/facebook/katana/model/FacebookSessionInfo;->mSessionCookiesFromAuthLogin:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    :cond_3
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    goto :goto_0
.end method
