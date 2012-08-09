.class public Lcom/facebook/orca/protocol/methods/PickedUserUtils;
.super Ljava/lang/Object;
.source "PickedUserUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/facebook/orca/users/PickedUser;)Lcom/facebook/orca/users/UserPhoneNumber;
    .locals 2
    .parameter

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/facebook/orca/users/PickedUser;->e()Lcom/facebook/orca/users/UserWithIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/users/UserWithIdentifier;->b()Lcom/facebook/orca/users/UserIdentifier;

    move-result-object v0

    .line 68
    instance-of v1, v0, Lcom/facebook/orca/users/UserPhoneNumber;

    if-eqz v1, :cond_0

    .line 69
    check-cast v0, Lcom/facebook/orca/users/UserPhoneNumber;

    .line 71
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/facebook/orca/users/PickedUser;)Lorg/codehaus/jackson/JsonNode;
    .locals 4
    .parameter

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/facebook/orca/users/PickedUser;->e()Lcom/facebook/orca/users/UserWithIdentifier;

    move-result-object v0

    .line 45
    new-instance v1, Lorg/codehaus/jackson/node/ObjectNode;

    sget-object v2, Lorg/codehaus/jackson/node/JsonNodeFactory;->a:Lorg/codehaus/jackson/node/JsonNodeFactory;

    invoke-direct {v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;-><init>(Lorg/codehaus/jackson/node/JsonNodeFactory;)V

    .line 46
    invoke-virtual {v0}, Lcom/facebook/orca/users/UserWithIdentifier;->b()Lcom/facebook/orca/users/UserIdentifier;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lcom/facebook/orca/users/UserIdentifier;->c()Lcom/facebook/orca/users/UserIdentifier$IdentifierType;

    move-result-object v2

    sget-object v3, Lcom/facebook/orca/users/UserIdentifier$IdentifierType;->FBID:Lcom/facebook/orca/users/UserIdentifier$IdentifierType;

    if-ne v2, v3, :cond_1

    .line 48
    check-cast v0, Lcom/facebook/orca/users/UserFbidIdentifier;

    .line 49
    const-string v2, "type"

    const-string v3, "id"

    invoke-virtual {v1, v2, v3}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string v2, "id"

    invoke-virtual {v0}, Lcom/facebook/orca/users/UserFbidIdentifier;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/facebook/orca/users/PickedUser;->c()Lcom/facebook/orca/users/UserIdentifier;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/orca/users/PickedUser;->c()Lcom/facebook/orca/users/UserIdentifier;

    move-result-object v0

    instance-of v0, v0, Lcom/facebook/orca/users/UserPhoneNumber;

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/facebook/orca/users/PickedUser;->c()Lcom/facebook/orca/users/UserIdentifier;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/UserPhoneNumber;

    .line 54
    const-string v2, "phone"

    invoke-virtual {v0}, Lcom/facebook/orca/users/UserPhoneNumber;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :cond_0
    :goto_0
    return-object v1

    .line 56
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/orca/users/UserIdentifier;->c()Lcom/facebook/orca/users/UserIdentifier$IdentifierType;

    move-result-object v2

    sget-object v3, Lcom/facebook/orca/users/UserIdentifier$IdentifierType;->PHONE:Lcom/facebook/orca/users/UserIdentifier$IdentifierType;

    if-ne v2, v3, :cond_0

    .line 57
    check-cast v0, Lcom/facebook/orca/users/UserPhoneNumber;

    .line 58
    const-string v2, "type"

    const-string v3, "phone"

    invoke-virtual {v1, v2, v3}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v2, "phone"

    invoke-virtual {v0}, Lcom/facebook/orca/users/UserPhoneNumber;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string v0, "country"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v0, "name"

    invoke-virtual {p0}, Lcom/facebook/orca/users/PickedUser;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method final a(Ljava/util/List;)Lorg/codehaus/jackson/JsonNode;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/users/PickedUser;",
            ">;)",
            "Lorg/codehaus/jackson/JsonNode;"
        }
    .end annotation

    .prologue
    .line 36
    new-instance v1, Lorg/codehaus/jackson/node/ArrayNode;

    sget-object v0, Lorg/codehaus/jackson/node/JsonNodeFactory;->a:Lorg/codehaus/jackson/node/JsonNodeFactory;

    invoke-direct {v1, v0}, Lorg/codehaus/jackson/node/ArrayNode;-><init>(Lorg/codehaus/jackson/node/JsonNodeFactory;)V

    .line 37
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/PickedUser;

    .line 38
    invoke-static {v0}, Lcom/facebook/orca/protocol/methods/PickedUserUtils;->b(Lcom/facebook/orca/users/PickedUser;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/node/ArrayNode;->a(Lorg/codehaus/jackson/JsonNode;)V

    goto :goto_0

    .line 40
    :cond_0
    return-object v1
.end method
