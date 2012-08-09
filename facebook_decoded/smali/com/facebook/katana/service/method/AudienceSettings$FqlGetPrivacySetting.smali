.class Lcom/facebook/katana/service/method/AudienceSettings$FqlGetPrivacySetting;
.super Lcom/facebook/katana/service/method/FqlGeneratedQuery;
.source "AudienceSettings.java"


# instance fields
.field a:Lcom/facebook/katana/model/PrivacySetting;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;Lcom/facebook/katana/model/PrivacySetting$Category;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 170
    const/4 v4, 0x0

    invoke-static {p5}, Lcom/facebook/katana/service/method/AudienceSettings$FqlGetPrivacySetting;->a(Lcom/facebook/katana/model/PrivacySetting$Category;)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/service/method/AudienceSettings$FqlGetPrivacySetting;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;Ljava/lang/String;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 163
    const-string v5, "privacy_setting"

    const-class v7, Lcom/facebook/katana/model/PrivacySetting;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/facebook/katana/service/method/FqlGeneratedQuery;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    .line 165
    return-void
.end method

.method private static a(Lcom/facebook/katana/model/PrivacySetting$Category;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    const-string v1, "name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {p0}, Lcom/facebook/katana/model/PrivacySetting$Category;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/katana/util/StringUtils;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final a(Lorg/codehaus/jackson/JsonParser;)V
    .locals 2
    .parameter

    .prologue
    .line 177
    const-class v0, Lcom/facebook/katana/model/PrivacySetting;

    invoke-static {p1, v0}, Lcom/facebook/katana/util/jsonmirror/JMParser;->b(Lorg/codehaus/jackson/JsonParser;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 178
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 179
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/PrivacySetting;

    iput-object v0, p0, Lcom/facebook/katana/service/method/AudienceSettings$FqlGetPrivacySetting;->a:Lcom/facebook/katana/model/PrivacySetting;

    .line 181
    :cond_0
    return-void
.end method
