part of prediction_v1_6_api;

class HostedmodelsResource_ {

  final Client _client;

  HostedmodelsResource_(Client client) :
      _client = client;

  /**
   * Submit input and request an output against a hosted model.
   *
   * [request] - Input to send in this request
   *
   * [project] - The project associated with the model.
   *
   * [hostedModelName] - The name of a hosted model.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Output> predict(Input request, core.String project, core.String hostedModelName, {core.Map optParams}) {
    var url = "{project}/hostedmodels/{hostedModelName}/predict";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (hostedModelName == null) paramErrors.add("hostedModelName is required");
    if (hostedModelName != null) urlParams["hostedModelName"] = hostedModelName;
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Output.fromJson(data));
  }
}

class TrainedmodelsResource_ {

  final Client _client;

  TrainedmodelsResource_(Client client) :
      _client = client;

  /**
   * Get analysis of the model and the data the model was trained on.
   *
   * [project] - The project associated with the model.
   *
   * [id] - The unique name for the predictive model.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Analyze> analyze(core.String project, core.String id, {core.Map optParams}) {
    var url = "{project}/trainedmodels/{id}/analyze";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (id == null) paramErrors.add("id is required");
    if (id != null) urlParams["id"] = id;
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Analyze.fromJson(data));
  }

  /**
   * Delete a trained model.
   *
   * [project] - The project associated with the model.
   *
   * [id] - The unique name for the predictive model.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> delete(core.String project, core.String id, {core.Map optParams}) {
    var url = "{project}/trainedmodels/{id}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (id == null) paramErrors.add("id is required");
    if (id != null) urlParams["id"] = id;
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    return response;
  }

  /**
   * Check training status of your model.
   *
   * [project] - The project associated with the model.
   *
   * [id] - The unique name for the predictive model.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Insert2> get(core.String project, core.String id, {core.Map optParams}) {
    var url = "{project}/trainedmodels/{id}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (id == null) paramErrors.add("id is required");
    if (id != null) urlParams["id"] = id;
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Insert2.fromJson(data));
  }

  /**
   * Train a Prediction API model.
   *
   * [request] - Insert to send in this request
   *
   * [project] - The project associated with the model.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Insert2> insert(Insert request, core.String project, {core.Map optParams}) {
    var url = "{project}/trainedmodels";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Insert2.fromJson(data));
  }

  /**
   * List available models.
   *
   * [project] - The project associated with the model.
   *
   * [maxResults] - Maximum number of results to return.
   *   Minimum: 0
   *
   * [pageToken] - Pagination token.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<List> list(core.String project, {core.int maxResults, core.String pageToken, core.Map optParams}) {
    var url = "{project}/trainedmodels/list";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new List.fromJson(data));
  }

  /**
   * Submit model id and request a prediction.
   *
   * [request] - Input to send in this request
   *
   * [project] - The project associated with the model.
   *
   * [id] - The unique name for the predictive model.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Output> predict(Input request, core.String project, core.String id, {core.Map optParams}) {
    var url = "{project}/trainedmodels/{id}/predict";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (id == null) paramErrors.add("id is required");
    if (id != null) urlParams["id"] = id;
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Output.fromJson(data));
  }

  /**
   * Add new data to a trained model.
   *
   * [request] - Update to send in this request
   *
   * [project] - The project associated with the model.
   *
   * [id] - The unique name for the predictive model.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Insert2> update(Update request, core.String project, core.String id, {core.Map optParams}) {
    var url = "{project}/trainedmodels/{id}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (id == null) paramErrors.add("id is required");
    if (id != null) urlParams["id"] = id;
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "PUT", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Insert2.fromJson(data));
  }
}

