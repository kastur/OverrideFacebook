.class public Lcom/facebook/katana/api/gql/model/FeedStory;
.super Lcom/facebook/katana/api/gql/model/FeedNode;
.source "FeedStory.java"


# instance fields
.field public final actors:Ljava/util/List;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$ListType;
        a = {
            Lcom/facebook/katana/api/gql/model/FeedProfile;
        }
        jsonFieldName = "actors"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/api/gql/model/FeedProfile;",
            ">;"
        }
    .end annotation
.end field

.field public final application:Lcom/facebook/katana/api/gql/model/FeedApplication;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "application"
    .end annotation
.end field

.field public final attachments:Ljava/util/List;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$ListType;
        a = {
            Lcom/facebook/katana/api/gql/model/FeedStoryAttachment;
        }
        jsonFieldName = "attachments"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/api/gql/model/FeedStoryAttachment;",
            ">;"
        }
    .end annotation
.end field

.field public final creationTime:J
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "creation_time"
    .end annotation
.end field

.field public final explicitPlace:Lcom/facebook/katana/api/gql/model/FeedPlace;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "explicit_place"
    .end annotation
.end field

.field public final feedback:Lcom/facebook/katana/api/gql/model/FeedStoryFeedback;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "feedback"
    .end annotation
.end field

.field public final implicitPlace:Lcom/facebook/katana/api/gql/model/FeedPlace;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "implicit_place"
    .end annotation
.end field

.field public final message:Lcom/facebook/katana/api/gql/model/FeedStoryText;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "message"
    .end annotation
.end field

.field public final privacyScope:Lcom/facebook/katana/api/gql/model/FeedPrivacyScope;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "privacy_scope"
    .end annotation
.end field

.field public final summary:Lcom/facebook/katana/api/gql/model/FeedStoryText;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "summary"
    .end annotation
.end field

.field public final title:Lcom/facebook/katana/api/gql/model/FeedStoryText;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "title"
    .end annotation
.end field

.field public final to:Lcom/facebook/katana/api/gql/model/FeedProfile;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "to"
    .end annotation
.end field

.field public final tracking:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "tracking"
    .end annotation
.end field

.field public final uniqueIdentifier:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "unique_identifier"
    .end annotation
.end field

.field public final via:Lcom/facebook/katana/api/gql/model/FeedProfile;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "via"
    .end annotation
.end field

.field public final with:Ljava/util/List;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$ListType;
        a = {
            Lcom/facebook/katana/api/gql/model/FeedProfile;
        }
        jsonFieldName = "with"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/api/gql/model/FeedProfile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 59
    invoke-direct {p0}, Lcom/facebook/katana/api/gql/model/FeedNode;-><init>()V

    .line 60
    iput-object v2, p0, Lcom/facebook/katana/api/gql/model/FeedStory;->uniqueIdentifier:Ljava/lang/String;

    .line 61
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/katana/api/gql/model/FeedStory;->creationTime:J

    .line 62
    iput-object v2, p0, Lcom/facebook/katana/api/gql/model/FeedStory;->title:Lcom/facebook/katana/api/gql/model/FeedStoryText;

    .line 63
    iput-object v2, p0, Lcom/facebook/katana/api/gql/model/FeedStory;->message:Lcom/facebook/katana/api/gql/model/FeedStoryText;

    .line 64
    iput-object v2, p0, Lcom/facebook/katana/api/gql/model/FeedStory;->summary:Lcom/facebook/katana/api/gql/model/FeedStoryText;

    .line 65
    iput-object v2, p0, Lcom/facebook/katana/api/gql/model/FeedStory;->actors:Ljava/util/List;

    .line 66
    iput-object v2, p0, Lcom/facebook/katana/api/gql/model/FeedStory;->attachments:Ljava/util/List;

    .line 67
    iput-object v2, p0, Lcom/facebook/katana/api/gql/model/FeedStory;->privacyScope:Lcom/facebook/katana/api/gql/model/FeedPrivacyScope;

    .line 68
    iput-object v2, p0, Lcom/facebook/katana/api/gql/model/FeedStory;->tracking:Ljava/lang/String;

    .line 69
    iput-object v2, p0, Lcom/facebook/katana/api/gql/model/FeedStory;->to:Lcom/facebook/katana/api/gql/model/FeedProfile;

    .line 70
    iput-object v2, p0, Lcom/facebook/katana/api/gql/model/FeedStory;->via:Lcom/facebook/katana/api/gql/model/FeedProfile;

    .line 71
    iput-object v2, p0, Lcom/facebook/katana/api/gql/model/FeedStory;->with:Ljava/util/List;

    .line 72
    iput-object v2, p0, Lcom/facebook/katana/api/gql/model/FeedStory;->application:Lcom/facebook/katana/api/gql/model/FeedApplication;

    .line 73
    iput-object v2, p0, Lcom/facebook/katana/api/gql/model/FeedStory;->implicitPlace:Lcom/facebook/katana/api/gql/model/FeedPlace;

    .line 74
    iput-object v2, p0, Lcom/facebook/katana/api/gql/model/FeedStory;->explicitPlace:Lcom/facebook/katana/api/gql/model/FeedPlace;

    .line 75
    iput-object v2, p0, Lcom/facebook/katana/api/gql/model/FeedStory;->feedback:Lcom/facebook/katana/api/gql/model/FeedStoryFeedback;

    .line 76
    return-void
.end method


# virtual methods
.method public final b()Lcom/facebook/katana/api/gql/model/FeedProfile;
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/facebook/katana/api/gql/model/FeedStory;->actors:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/katana/api/gql/model/FeedStory;->actors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/facebook/katana/api/gql/model/FeedStory;->actors:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/api/gql/model/FeedProfile;

    .line 84
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Lcom/facebook/katana/api/gql/model/FeedStoryAttachment;
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/facebook/katana/api/gql/model/FeedStory;->attachments:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/katana/api/gql/model/FeedStory;->attachments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/facebook/katana/api/gql/model/FeedStory;->attachments:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/api/gql/model/FeedStoryAttachment;

    .line 93
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x2c

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    const/16 v0, 0x5b

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 103
    iget-object v0, p0, Lcom/facebook/katana/api/gql/model/FeedStory;->id:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 106
    iget-object v0, p0, Lcom/facebook/katana/api/gql/model/FeedStory;->title:Lcom/facebook/katana/api/gql/model/FeedStoryText;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/facebook/katana/api/gql/model/FeedStory;->title:Lcom/facebook/katana/api/gql/model/FeedStoryText;

    iget-object v0, v0, Lcom/facebook/katana/api/gql/model/FeedStoryText;->text:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/api/gql/model/FeedStory;->actors:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/facebook/katana/api/gql/model/FeedStory;->actors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 112
    iget-object v0, p0, Lcom/facebook/katana/api/gql/model/FeedStory;->actors:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/api/gql/model/FeedProfile;

    iget-object v0, v0, Lcom/facebook/katana/api/gql/model/FeedProfile;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 114
    const-string v0, "ProfilePics: ["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    iget-object v0, p0, Lcom/facebook/katana/api/gql/model/FeedStory;->actors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/api/gql/model/FeedProfile;

    .line 116
    iget-object v3, v0, Lcom/facebook/katana/api/gql/model/FeedProfile;->profilePicture:Lcom/facebook/katana/api/gql/model/FeedImage;

    if-eqz v3, :cond_1

    .line 117
    iget-object v0, v0, Lcom/facebook/katana/api/gql/model/FeedProfile;->profilePicture:Lcom/facebook/katana/api/gql/model/FeedImage;

    iget-object v0, v0, Lcom/facebook/katana/api/gql/model/FeedImage;->uri:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    const-string v0, "|"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 121
    :cond_2
    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    :cond_3
    iget-object v0, p0, Lcom/facebook/katana/api/gql/model/FeedStory;->message:Lcom/facebook/katana/api/gql/model/FeedStoryText;

    if-eqz v0, :cond_5

    .line 125
    iget-object v0, p0, Lcom/facebook/katana/api/gql/model/FeedStory;->message:Lcom/facebook/katana/api/gql/model/FeedStoryText;

    iget-object v0, v0, Lcom/facebook/katana/api/gql/model/FeedStoryText;->text:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    :goto_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 131
    iget-wide v2, p0, Lcom/facebook/katana/api/gql/model/FeedStory;->creationTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 132
    const/16 v0, 0x5d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 134
    iget-object v0, p0, Lcom/facebook/katana/api/gql/model/FeedStory;->attachments:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/facebook/katana/api/gql/model/FeedStory;->attachments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 135
    const-string v0, "attachment 0:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    iget-object v0, p0, Lcom/facebook/katana/api/gql/model/FeedStory;->attachments:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/api/gql/model/FeedStoryAttachment;

    iget-object v0, v0, Lcom/facebook/katana/api/gql/model/FeedStoryAttachment;->title:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 127
    :cond_5
    const-string v0, "NULL"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method
